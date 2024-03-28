# frozen_string_literal: true

FactoryBot.define do
  factory :reservation do
    association :room
    association :guest
    association :user

    checkin_at { Faker::Date.forward(days: 15) }
    checkout_at { Faker::Date.forward(days: 30) }
    reservation_status { 'pending' }
    book_code { "RSV-#{Faker::Number.number(digits: 6)}" }
  end
end
