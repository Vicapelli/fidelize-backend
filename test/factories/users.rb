FactoryBot.define do
  factory :user do
    name { "MyString" }
    email { "MyString" }
    password_digest { "MyString" }
    recovery_password_digest { "MyString" }
    email_confirmed { false }
  end
end
