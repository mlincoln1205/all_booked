# frozen_string_literal: true

FactoryBot.define do
  factory :guest do
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    email { "#{first_name&.downcase}@example.com" }
    phone_number { Faker::PhoneNumber.phone_number }
    address { Faker::Address.full_address }
  end
end
