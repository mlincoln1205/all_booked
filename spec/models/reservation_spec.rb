# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Reservation, type: :model do
  it '#Reservation valid with all attributes' do
    reservation = create(:reservation)

    expect(reservation).to be_valid
  end

  it '#Reservation not valid with missing attributes' do
    reservation = Reservation.new(room_id: 1, guest_id: 1, checkin_at: '2020-01-01')

    expect(reservation).not_to be_valid
  end
end
