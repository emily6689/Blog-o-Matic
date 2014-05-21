require 'spec_helper'

feature 'user accounts', %Q{
  As a user,
  I want to create an account,
  So I can use the app's services
} do
  #  ----Acceptance Criteria----
  #   1.  I can register by providing my username, email, and a password
  #   2.  I can login with my email and password or sign out
  #   3.  I am automatically signed in when I start the app
  #   4.  I can view a list of my favorite posts


  scenario 'user registers with valid information' do
      prior_count = User.count

      visit root_path
      user = FactoryGirl.build(:user)
      click_on 'Sign Up'
      fill_out_registration_form(user)
      click_on 'Sign up'

      expect(User.count).to eq(prior_count + 1)
    end

  scenario 'user fills out form incorrectly' do
    fields = ['Username', 'Email', 'user_password']
    user = FactoryGirl.build(:user)

    fields.each do |omitted|
      visit new_user_registration_path
      fill_out_registration_form(user)
      fill_in omitted, with: ''
      click_on 'Sign up'

      expect(page).to have_content("can't be blank")
    end
  end

  scenario 'user enters an invalid password' do
    user = FactoryGirl.build(:user)
    visit new_user_registration_path
    fill_in 'Username', with: user.username
    fill_in 'Email', with: user.email
    fill_in 'user_password', with: 'abcd'
    fill_in 'user_password_confirmation', with: 'abcd'
    click_on 'Sign up'

    expect(page).to have_content('is too short')
  end

  scenario 'user successfully signs in' do
    user = FactoryGirl.create(:user)
    visit root_path
    click_on 'Sign In'
    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    click_on 'Sign in'

    expect(current_path).to eq(root_path)
    expect(page).to have_content("Signed in as #{user.username}")
  end

  scenario 'user enters invalid credentials' do
    visit root_path
    click_on 'Sign In'
    fill_in 'Email', with: 'unknown@unknown.com'
    fill_in 'Password', with: 'abcdefgh'
    click_on 'Sign In'

    expect(current_path).to eq('/users/sign_in')
  end

  scenario 'user signs out' do
    user = FactoryGirl.create(:user)
    visit root_path
    click_on 'Sign In'
    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    click_on 'Sign in'
    click_on 'Sign Out'

    expect(current_path).to eq(root_path)
    expect(page).to have_content('Sign In')
  end

end
