# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(name: "lishouchao",
		email: "lishouchao@163.com",
		password:"123abc",
		password_confirmation: "123abc",
                admin: true)
99.times do |n|
	name = Faker::Name.name
	email = "example-#{n+1}@163.com"
	password = "password"
	User.create!(name: name,
			email: email,
			password:password,
			password_confirmation: password)
end
users = User.order(:created_at).take(6)
10.times do
content = Faker::Lorem.sentence(5)
users.each { |user| user.microposts.create!(content: content) }
end

10.times do
name = Faker::Name.name
users.each { |user| user.artworks.create!(name: name) }
end

10.times do
name = Faker::Name.name
users.each { |user| user.artists.create!(name: name) }
end

