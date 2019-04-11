FactoryBot.define do
  factory :user do
    sequence(:email) { |n| "dummyemail#{n}@gmail.com" }

    add_attribute(:password) { "secretPassword" }
    add_attribute(:password_confirmation) { "secretPassword" }
  end
        factory :gram do
          add_attribute(:message) { "hello" }
          picture { fixture_file_upload(Rails.root.join('spec', 'fixtures', 'picture.png'), 'image/png') }
          association :user
  end
end
