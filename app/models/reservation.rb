# frozen_string_literal: true

class Reservation < ApplicationRecord # :nodoc:
  # Enums
  enum reservation_status: %i[pending confirmed canceled]

  accepts_nested_attributes_for :room, :guest, :user, allow_destroy: true

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
