class Car < ApplicationRecord
  belongs_to :owner
  has_many :reviews
  has_many :favourites, dependent: :destroy

  validates :brand, :model, :year, :fuel, presence: true
end
