# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Food.destroy_all

12.times do
  Food.create(
    name: Faker::Food.dish,
    description: Faker::Food.ingredient,
    price: Faker::Commerce.price,
    photo: 'http://www.consejosgratis.es/wp-content/uploads/2013/12/los-mejores-restaurants-de-comida-rapida-en-peru.jpg'
  )
end
