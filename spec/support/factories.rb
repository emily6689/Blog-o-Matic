FactoryGirl.define do
  factory :user do
    sequence(:username) {|n| "user#{n}"}
    sequence(:email) {|n| "user#{n}@nowhere.com"}
    password "abcdefgh"

    factory :admin do
      role 'admin'
    end
  end
end
