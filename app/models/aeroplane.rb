class Aeroplane < ApplicationRecord
  has_many :reservation, dependent: :destroy
end
