# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# AdminUser.create!(email: 'me@me.com', password: 'me', password_confirmation: 'me') if Rails.env.development?

me = AdminUser.find_by_email('me@me.com')

if me
  puts 'User already created!'
else
  AdminUser.create!(email: 'me@me.com', username: 'me', password: 'me', password_confirmation: 'me') if Rails.env.development?
end
