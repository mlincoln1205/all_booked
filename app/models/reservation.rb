# frozen_string_literal: true

class Reservation < ApplicationRecord # :nodoc:
  # Enums
  enum reservation_status: %i[pending confirmed canceled]

  # Associations
  belongs_to :room
  belongs_to :guest
  belongs_to :user

  # Validations
  validates :checkin_at, presence: true
  validates :checkout_at, presence: true
end
