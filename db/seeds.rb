# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

owner_1 = Owner.create(nickname:"Jeremy")
owner_2 = Owner.create(nickname:"Richard")
owner_3 = Owner.create(nickname:"James")


Car.create(brand: "Mitsuoka", model:"Le-seyde", year:"1993", fuel:"petrol", owner: owner_1)
Car.create(brand: "Opel", model:"Kadett", year:"1963", fuel:"petrol", owner: owner_2)
Car.create(brand: "Crosley", model:"CC FOUR convertible", year:"1940", fuel:"petrol", owner: owner_3)
