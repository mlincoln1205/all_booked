require 'rails_helper'

RSpec.describe User, type: :model do
  it "#User valid with all attributes" do
    user = User.new(username: "JohnDoe", email: "mlincoln@test.com", password: "password")

    expect(user).to be_valid
  end

  it "#User not valid with missing attributes" do
    user = User.new(username: "JohnDoe", password: "password")

    expect(user).not_to be_valid
  end
end
