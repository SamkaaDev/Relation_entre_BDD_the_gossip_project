# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do 
	city_seed = City.create!(name: Faker::Address.city, zip_code: Faker::Address.zip_code)
end



10.times do 
	my_firstname = Faker::Name.first_name
	my_lastname = Faker::Name.last_name
	user_seed = User.create!(first_name: my_firstname, last_name: my_lastname, description: Faker::Quote.famous_last_words, email: Faker::Internet.email(name: "#{my_firstname} #{my_lastname}", separators: '.'), age: Faker::Number.between(from: 15, to: 75), city_id: Faker::Number.between(from: 1, to: 10))
end



30.times do 
	my_artist = Faker::Artist.name
	gossip_seed = Gossip.create!(title: "Incredible thing to know about #{my_artist} ", content: "#{my_artist} is now #{Faker::Verb.ing_form} a #{Faker::House.furniture} with #{Faker::Artist.name}", user_id: Faker::Number.between(from: 1, to: 10))
end



10.times do 
	tag_seed = Tag.create!(title: "##{Faker::Hipster.word}")
end



60.times do 
	tagtogossip_seed = TagToGossip.create!(gossip_id: Faker::Number.between(from: 1, to: 30), tag_id: Faker::Number.between(from: 1, to: 10))
end



20.times do 
	privatemessage_seed = PrivateMessage.create!(content: Faker::Hipster.sentence, recipient_id: Faker::Number.between(from: 1, to: 10), sender_id: Faker::Number.between(from: 1, to: 10))
end