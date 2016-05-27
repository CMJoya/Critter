# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

if User.count == 0
  User.create(username: Faker::Superhero.name, email: Faker::Internet.email, password: 12345678)
  User.create!(username: Faker::StarWars.character, email: Faker::Internet.email, password: 12345678)
  User.create(username: Faker::Superhero.name, email: Faker::Internet.email, password: 12345678)
  User.create(username: Faker::StarWars.character, email: Faker::Internet.email, password: 12345678)
  User.create(username: Faker::Superhero.name, email: Faker::Internet.email, password: 12345678)
end

if Post.count == 0
  Post.create!(content: Faker::Company.bs, user_id: 1)
  Post.create!(content: Faker::Company.bs, user_id: 1)
  Post.create!(content: Faker::Company.bs, user_id: 2)
  Post.create!(content: Faker::Company.bs, user_id: 4)
  Post.create!(content: Faker::Company.bs, user_id: 3)
  Post.create!(content: Faker::Company.bs, user_id: 4)
  Post.create!(content: Faker::StarWars.quote, user_id: 3)
  Post.create!(content: Faker::Company.bs, user_id: 5)
  Post.create!(content: Faker::Company.bs, user_id: 4)
  Post.create!(content: Faker::StarWars.quote, user_id: 4)
  Post.create!(content: Faker::StarWars.quote, user_id: 2)
end
