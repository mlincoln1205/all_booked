# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    username { Faker::Internet.username }
    email { "#{username}@example.com" }
    password { Faker::Internet.password }
  end
end
