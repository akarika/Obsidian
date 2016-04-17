# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'faker'
include Faker
5.times do |_n|
  email = Faker::Internet.email
  password = 'password'
  User.create!(email: email,
               password:              password,
               password_confirmation: password)
end
7.times do |_n|
  title = Faker::Lorem.sentence(3, false, 4)
  content = Faker::Lorem.paragraph(4, false, 6)
  Article.create!(title: title,
                  content: content)
end
Admin.create!(email: 'admin@ad.com',
              password: 'admin_admin',
              password_confirmation: 'admin_admin')
User.create!(email: 'user@u.com',
             password:              'user_example',
             password_confirmation: 'user_example')
