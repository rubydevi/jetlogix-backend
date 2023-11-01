class User < ApplicationRecord
  has_many :reservations, foreign_key: 'user_id', dependent: :destroy
end
