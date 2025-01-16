class Owner < ApplicationRecord
  has_many :cars, dependent: :destroy

  validates :nickname, uniqueness: true, presence: true
end
