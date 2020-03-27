# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Librarian.create(
  email: 'admin@admin.com',
  password: '123456'
)

Librarian.create(
  email: 'admin2@admin.com',
  password: '123456'
)

10.times do 
  Category.create(
    name: Faker::Food.dish
  )
end

25.times do 
  Author.create(
    name: Faker::Name.name
  )
end

10.times do 
  Client.create(
    name: Faker::Name.name
  )
end

10.times do
  Book.create(
    name: Faker::Restaurant.name,
    stock: rand(1..5),
    author_id: rand(1..25),
    category_id: rand(1..10)
  )
end