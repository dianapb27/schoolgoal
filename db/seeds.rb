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
Appointment.destroy_all
Course.destroy_all

puts "Creating seeds..."
User.create!([{
    first_name:"Bob",
    last_name: "Robinson",
    email: 'brob@gmail.com',
    password: Faker::String.random(length: 10)
  },
  {
    first_name: "Alex",
    last_name: "Jones",
    email: 'ajones@gmail.com',
    password: Faker::String.random(length: 10)
  },
  {
    first_name: "Colby",
    last_name: "Morales",
    email: 'cmorales@gmail.com',
    password: Faker::String.random(length: 10)
  },
  {
    first_name: "Danielle",
    last_name: "Richards",
    email: 'drichards@gmail.com',
    password: Faker::String.random(length: 10)
  },
  {
    first_name: "Mike",
    last_name: "Pearson",
    email: 'mpearson@gmail.com',
    password: Faker::String.random(length: 10)
  }])

  Course.create!([{
      teacher: User.first,
      title: "John's Biochemistry Course",
      description: "John has been teaching Biochemistry for 6 years and loves to help college students learn the subject.",
      category: "Science",
      price_per_hour: rand(5..30)
    },
    {
      teacher: User.first,
      title: "Martha's Literature Course",
      description: "Learn middle school Literaure online with Martha!",
      category: "English",
      price_per_hour: rand(5..30)
    },
    {
      teacher: User.first,
      title: "Pablo's Public Health Course",
      description: "For college students who need a little help succeeding in their public health courses.",
      category: "Science",
      price_per_hour: rand(5..30)
    },
    {
      teacher: User.last,
      title:  "Michael's Music Course",
      description: "For students of all ages who want to learn how to read music notes and apply that knowledge to using their instruments.",
      category: "Science",
      price_per_hour: rand(5..30)
    },
    {
      teacher: User.first,
      title:  "Sarah's Chemistry Course",
      description: "Want to know more about the molecues that make up this world? Let me teach you!",
      category: "Science",
      price_per_hour: rand(5..30)
    },
    {
      teacher: User.first,
      title:  "Emily's Japanese Course",
      description: "Learn Japanse from someone who was born and raised in Japan.",
      category: "Japanese",
      price_per_hour: rand(5..30)
    },
    {
      teacher: User.first,
      title:  "Mark's Arabic Course",
      description: "Want to learn Arabic? Let me teach you.",
      category: "Japanese",
      price_per_hour: rand(5..30)
    },
    {
      teacher: User.last,
      title:  "Brunos's German Course",
      description: "Guten Tag! Learn German with me.",
      category: "German",
      price_per_hour: rand(5..30)
    },
    {
      teacher: User.first,
      title:  "Joseph's Pottery Course",
      description: "Pottery is my passion and I want to make it yours too.",
      category: "Japanese",
      price_per_hour: rand(5..30)
    },
    {
      teacher: User.last,
      title:  "Daniel's Philosophy Course",
      description: "Learn what the meaning of life is with this course.",
      category: "Science",
      price_per_hour: rand(5..30)
    }])

puts "Finished..."





