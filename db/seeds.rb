# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.find_or_create_by(id: 1) do |user|
  user.email = 'otto59639@gmail.com'
  user.password = 'aaaaaa'
  user.name = "オット"
end

User.find_or_create_by(id: 2) do |user|
  user.email = 'tuma59639@gmail.com'
  user.password = 'aaaaaa'
  user.name = "ツマ"
end

# User.create(email: 'otto59639@gmail.com', password: 'aaaaaa')
#User.create(email: 'tuma59639@gmail.com', password: 'aaaaaa')