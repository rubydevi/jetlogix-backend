class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :aeroplane

  validates :user, presence: true
  validates :aeroplane, presence: true
  validates :destination, presence: true
  validates :reserved_date, presence: true
end
