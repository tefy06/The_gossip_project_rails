# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'
City.destroy_all
User.destroy_all

city_creation = []

for i in 0 ... 10 do
	city_creation[i] = City.create(name: Faker::Address.city, zip_code: Faker::Address.zip_code)
end

for i in 0 ... 10 do
	user_generator = User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, descritpion: Faker::Lorem.paragraph, email: Faker::Internet.free_email, age: Faker::Number.between(from: 18, to: 65), city: city_creation[i])
end
	
20.times do
	create_gossip = Gossip.create(title: Faker::Book.title, content: Faker::Book.publisher)
end
