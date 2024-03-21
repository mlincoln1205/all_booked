# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Guest, type: :model do
  it '#Guest valid with all attributes' do
    guest = create(:guest)

    expect(guest).to be_valid
  end

  it '#Guest not valid with missing attributes' do
    guest = create(:guest)
    guest.first_name = nil

    expect(guest).not_to be_valid
  end
end
