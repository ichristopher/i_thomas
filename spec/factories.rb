FactoryGirl.define do
  factory :user do
    name     "Thomas Christopher"
    email    "thomas@example.com"
    password "foobar"
    password_confirmation "foobar"
  end
end