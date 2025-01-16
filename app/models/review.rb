class Review < ApplicationRecord
  belongs_to :car
  validates :rating, length: { maximum: 5 }
  validates :comment, length: { minimum: 6, too_short: "must have atleast 6 characters" }
end
