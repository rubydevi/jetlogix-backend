class Aeroplane < ApplicationRecord
  has_many :reservations, dependent: :destroy

  validates :name, presence: true
  validates :model, presence: true
  validates :image, presence: true
  validates :description, presence: true
  validates :number_of_seats, presence: true
  validates :location, presence: true
  validates :fee, numericality: { greater_than_or_equal_to: 0 }
end
