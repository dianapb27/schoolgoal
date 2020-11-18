# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

# 10 courses: title, description, category, price_per_hour
# 10 users: email, first_name, last_name
categories = %w[English Spanish French German Chinese Japanese Arabic History Math Science Art Music]

puts "Deleting seeds"
User.destroy_all
Course.destroy_all

puts "Creating seeds..."

10.times do 
  user = User.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Name.first_name + '@gmail.com',
    password: Faker::String.random(length: 10)
  )
  3.times do
    Course.create!(
      teacher: user,
      title: Faker::TvShows::RickAndMorty.character + "'s",
      description: "This class is " + Faker::TvShows::DrWho.catch_phrase,
      category: categories.sample,
      price_per_hour: Faker::Number.between(from: 1, to: 10)
    )
  end
end

puts "Finished..."





