# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#City.destroy_all
#Gossip.destroy_all
#User.destroy_all
#GossipAndTag.destroy_all
#Tag.destroy_all
#PrivateMessage.destroy_all
city = []
user = []
gossip = []
tag_ol = Tag.create(title: "rererzez")
for i in 0 ... 10
	city[i] = City.create(name: "Tana #{i}", zip_code: "1A2BC#{i}")
end


user_1 = User.create(first_name: "Nom", last_name: "Prénom", description: "Néant", email: "user_1@user_1.com", age: 10)

user_2 = User.create(first_name: "Nom_2", last_name: "Prénom_2", description: "Néant_2", email: "user_2@user_2.com", age: 10)
for i in 0 ... 10
	user[i] = User.create(first_name: "Nom #{i}", last_name: "Prénom #{i}", description: "Néant #{i}", email: "user_#{i}@user_#{i}.com", age: i, city: city[i])
end

gossip_tag = Gossip.create(title: "Zany", content: "Zavatra", user: user_1)

for i in 0 ... 10
	gossip[i] = Gossip.create(title: "Gossip #{i}", content: "This is a new gossip #{i}", user: user[i])
end

tags_joined = GossipAndTag.create(gossip: gossip_tag, tag: tag_ol)

pm = PrivateMessage.create(sender: user_1, recipient: user_1)

mp = PrivateMessage.create(sender:user[2], recipient: user[3])