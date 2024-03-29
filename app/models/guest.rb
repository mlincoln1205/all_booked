# frozen_string_literal: true

class Guest < ApplicationRecord # :nodoc:
  # Associations
  has_many :reservations, dependent: :destroy

  # Validations
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :address, presence: true
  validates :phone_number, presence: true
end
