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
    first_name: "Josh",
    last_name: "Goulart",
    email: 'jgoulart@gmail.com',
    password: Faker::String.random(length: 10)
  },
  {
    first_name: "Diana",
    last_name: "Davis",
    email: 'ddavis@gmail.com',
    password: Faker::String.random(length: 10)
  },
  {
    first_name: "Marcus",
    last_name: "Woods",
    email: 'vwoods@gmail.com',
    password: Faker::String.random(length: 10)
  }])

  Course.create!([{
      teacher: User.first,
      title: "Biochemistry Course",
      description: "I have been teaching Biochemistry for 6 years and I love to help college students learn the subject.",
      category: "Science",
      price_per_hour: rand(5..30)
    },
    {
      teacher: User.second,
      title: "Literature Course",
      description: "Learn middle school Literaure online!",
      category: "English",
      price_per_hour: rand(5..30)
    },
    {
      teacher: User.third,
      title: "Public Health Course",
      description: "For college students who need a little help succeeding in their public health courses.",
      category: "Science",
      price_per_hour: rand(5..30)
    },
    {
      teacher: User.fourth,
      title:  "Music Course",
      description: "For students of all ages who want to learn how to read music notes and apply that knowledge to using their instruments.",
      category: "Music",
      price_per_hour: rand(5..30)
    },
    {
      teacher: User.fifth,
      title:  "Chemistry Course",
      description: "Want to know more about the molecues that make up this world? Let me teach you!",
      category: "Science",
      price_per_hour: rand(5..30)
    },
    {
      teacher: User.first,
      title:  "Japanese Course",
      description: "Learn Japanse from someone who was born and raised in Japan.",
      category: "Japanese",
      price_per_hour: rand(5..30)
    },
    {
      teacher: User.second,
      title:  "Arabic Course",
      description: "Want to learn Arabic? Let me teach you.",
      category: "Arabic",
      price_per_hour: rand(5..30)
    },
    {
      teacher: User.third,
      title:  "German Course",
      description: "Guten Tag! Learn German with me.",
      category: "German",
      price_per_hour: rand(5..30)
    },
    {
      teacher: User.fourth,
      title:  "Pottery Course",
      description: "Pottery is my passion and I want to make it yours too.",
      category: "Art",
      price_per_hour: rand(5..30)
    },
    {
      teacher: User.last,
      title:  "Philosophy Course",
      description: "Learn what the meaning of life is with this course.",
      category: "Art",
      price_per_hour: rand(5..30)
    }])

puts "Finished..."





