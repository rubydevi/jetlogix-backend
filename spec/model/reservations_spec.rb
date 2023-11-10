require 'rails_helper'

RSpec.describe Reservation, type: :model do
  let(:user) { User.new() }
  before { user.save }

  let(:reservation) do
    Reservation.new()
  end
  before { reservation.save }

  it '' do
    
  end

end