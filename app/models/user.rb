# frozen_string_literal: true

class User < ApplicationRecord # :nodoc:
  # Associations
  has_many :reservations, dependent: :destroy

  # Validations
  validates :username, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true
end
