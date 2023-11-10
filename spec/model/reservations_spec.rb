require 'rails_helper'

RSpec.describe Reservation, type: :model do
  let(:user) do
    User.new(name: 'bob', email: 'bob12@gmail.com', password: 'password12', password_confirmation: 'password12')
  end
  before { user.save }

  let(:plane) do
    Aeroplane.new( name: "boning 777", model: 'ruby@mail.com', image: 'image 1', description: 'Description of the planes',
                  number_of_seats: 6, location: 'Middle Earth', fee: 60.0)
  end
  before { plane.save }
  let(:reservation) do
    Reservation.new(reserved_date: '2023-11-11', start_time: '18:24', end_time: '20:25', start_location: 'addis ababa',
                    destination: 'india', user_id: user.id, aeroplane_id: plane.id)
  end
  before { reservation.save }
  context 'when testing the Reservation class' do
    it 'should have user ' do
      reservation.user_id = nil
      expect(reservation).to_not be_valid
    end
    it 'should have areoplane ' do
      reservation.aeroplane_id = nil
      expect(reservation).to_not be_valid
    end
    it 'should have resevation date ' do
      reservation.destination = nil
      expect(reservation).to_not be_valid
    end
    it 'should have destination ' do
      reservation.reserved_date = nil
      expect(reservation).to_not be_valid
    end
    it 'should have pass if all valid ' do
      expect(reservation).to be_valid
    end
  end
end
