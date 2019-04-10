FactoryBot.define do
  factory :user do
    sequence :email do |n|
      "dummyemail#{n}@gmail.com"
    end
    add_attribute(:password) { "secretPassword" }
    add_attribute(:password_confirmation) { "secretPassword" }
  end
  factory :gram do
    message "hello"
    picture { fixture_file_upload(Rails.root.join('spec', 'fixtures', 'picture.png'), 'image/png') }
    association :user
  end
end
