require 'rails_helper'

RSpec.describe Aeroplane, type: :model do
  describe 'validations' do
    it 'name should be present' do
      aeroplane = Aeroplane.new(model: 'ruby@mail.com',
                                image: 'image 1',
                                description: 'Description of the planes',
                                number_of_seats: 6,
                                location: 'Middle Earth',
                                fee: 60.0)
      expect(aeroplane).to_not be_valid
    end

    it 'model should be present' do
      aeroplane = Aeroplane.new(name: 'Dragon 1',
                                image: 'image 1',
                                description: 'Description of the planes',
                                number_of_seats: 6,
                                location: 'Middle Earth',
                                fee: 60.0)
      expect(aeroplane).to_not be_valid
    end

    it 'image should be present' do
      aeroplane = Aeroplane.new(name: 'Dragon 1',
                                model: 'Jet',
                                description: 'Description of the planes',
                                number_of_seats: 6,
                                location: 'Middle Earth',
                                fee: 60.0)
      expect(aeroplane).to_not be_valid
    end

    it 'description should be present' do
      aeroplane = Aeroplane.new(name: 'Dragon 1',
                                image: 'image 1',
                                model: 'Jet',
                                number_of_seats: 6,
                                location: 'Middle Earth',
                                fee: 60.0)
      expect(aeroplane).to_not be_valid
    end

    it 'number_of_seats should be present' do
      aeroplane = Aeroplane.new(name: 'Dragon 1',
                                image: 'image 1',
                                model: 'Jet',
                                description: 'Description of the planes',
                                location: 'Middle Earth',
                                fee: 60.0)
      expect(aeroplane).to_not be_valid
    end

    it 'location should be present' do
      aeroplane = Aeroplane.new(name: 'Dragon 1',
                                image: 'image 1',
                                model: 'Jet',
                                description: 'Description of the planes',
                                number_of_seats: 6,
                                fee: 60.0)
      expect(aeroplane).to_not be_valid
    end

    it 'fee should be greater than 0' do
      aeroplane = Aeroplane.new(name: 'Dragon 1',
                                image: 'image 1',
                                model: 'Jet',
                                description: 'Description of the planes',
                                number_of_seats: 6,
                                location: 'Middle Earth',
                                fee: -1)
      expect(aeroplane).to_not be_valid
    end
  end
end
