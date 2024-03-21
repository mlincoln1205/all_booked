# frozen_string_literal: true

class Reservation < ApplicationRecord
  # Enums
  enum status: %i[pending confirmed canceled]

  # Associations
  belongs_to :room
  belongs_to :guest
  belongs_to :user

  # Validations
  validates :room_id, presence: true
  validates :guest_id, presence: true
  validates :checkin_at, presence: true
  validates :checkout_at, presence: true
end
