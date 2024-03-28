# frozen_string_literal: true

FactoryBot.define do
  factory :room do
    room_type { 'double' }
    number { 101 }
    room_status { 'available' }
    capacity { 2 }
  end
end
