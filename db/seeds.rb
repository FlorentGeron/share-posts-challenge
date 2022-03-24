# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Hello People! Wanna seed?"
User.destroy_all
Post.destroy_all
Comment.destroy_all

puts "OK, I'll start by creating 2 users for you"

user1 = User.new(
  email: "master@certif.com",
  nickname: "Master",
  password: "000000"
)
user1.save!

user2 = User.new(
  email: "rookie@certif.com",
  nickname: "Rookie",
  password: "000000"
)
user2.save!

puts "Created #{User.count} #{"user".pluralize(User.count)} for you"
