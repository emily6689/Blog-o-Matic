require 'spec_helper'

describe User do
  describe 'validations' do
    let(:blank) {['', nil]}

    user = FactoryGirl.build(:user)

    it {should have_valid(:username).when(user.username)}
    it {should_not have_valid(:username).when(*blank)}

    it {should have_valid(:email).when(user.email)}
    it {should_not have_valid(:email).when(*blank)}
    it {should_not have_valid(:email).when('abc@gmail')}

    it {should have_valid(:password).when(user.password)}
    it {should_not have_valid(:password).when(*blank)}
    it {should_not have_valid(:password).when('1234')}

    it {should have_valid(:role).when('member', 'admin')}
    it {should_not have_valid(:role).when('other')}

    it 'is valid when given valid attributes' do
      expect(user).to be_valid
    end
  end

  describe 'associations' do
    it {should have_many(:posts)}
    it {should have_many(:votes)}
  end

  describe 'admin verification' do
    it 'is not an admin if role is not admin' do
      user = FactoryGirl.build(:user)
      expect(user.is_admin?).to_not be_true
    end

    it 'is an admin if role is admin' do
      user = FactoryGirl.build(:user, role: 'admin')
      expect(user.is_admin?).to be_true
    end
  end
end

