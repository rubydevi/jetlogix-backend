class Aeroplane < ApplicationRecord
  has_many :reservations, dependent: :destroy

  validates :name, presence: true
  validates :image, presence: true
  validates :fee, numericality: { greater_than_or_equal_to: 0.0 }
end
