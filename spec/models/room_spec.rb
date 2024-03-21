# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Room, type: :model do
  it '#Room valid with all attributes' do
    room = create(:room, number: 101, room_type: 0, status: 0)

    expect(room).to be_valid
  end

  it '#Room not valid with missing attributes' do
    room = create(:room, number: 101, room_type: 0)
    room.number = nil

    expect(room).not_to be_valid
  end
end
