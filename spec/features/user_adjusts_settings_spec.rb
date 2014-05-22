require 'spec_helper'

feature 'user account settings', %Q{
  As a registered user,
  I want to edit my account settings,
  So all of my information will remain up-to-date.
} do

  # ---------Acceptance Criteria---------
  # 1. As a signed-in user, I can click on Account Settings to edit my information
  # 2. I can upload a gravatar here
  # 3. I can update my blurb about myself.
  # 4. I can update my username.


  scenario "user can visit account settings page" do
    user = FactoryGirl.create(:user)
    FactoryGirl.create_list(:post, 10)
    visit root_path
    click_on 'Sign In'
    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    within('div.form-actions') do
      click_on 'Sign in'
    end
    click_on 'Account Settings'

    expect(page).to have_content("Gravatar")
    expect(page).to have_content("Website")
  end
end
