# frozen_string_literal: true

class Room < ApplicationRecord # :nodoc:
  # Associations
  has_many :reservations, dependent: :destroy

  # Enums
  enum room_type: %i[single double triple family_suite]
  enum room_status: %i[available unavailable]

  # Validations
  validates :number, presence: true, uniqueness: true
  validates :room_type, presence: true
  validates :room_status, presence: true
  validates :capacity, presence: true
end
