# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Flat.destroy_all

puts 'Creating flats...'
flats_attributes = [
  {
    name: 'Light & Spacious Garden Flat London',
    address: '10 Clifton Gardens London W9 1DT',
    description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
    price_per_night: 75,
    number_of_guests: 3
  },
  {
    name: 'Great Flat Paris',
    address: 'Buttes chaumont Paris',
    description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Officia nemo doloremque, illum adipisci rem porro nesciunt ea esse aperiam nulla dicta, numquam consequatur officiis incidunt provident, perferendis beatae suscipit asperiores.',
    price_per_night: 65,
    number_of_guests: 2
  },
  {
    name: 'Come to party in Berlin',
    address: 'AlexanderPlatz Berlin',
    description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus amet consectetur architecto, ratione. Quo accusantium rem velit, odit cupiditate voluptatem id ullam magnam? Possimus aut obcaecati, nihil quis deserunt pariatur.',
    price_per_night: 80,
    number_of_guests: 10
  },
  {
    name: 'Experience the Amsterdam fog',
    address: 'Big canal Amsterdam',
    description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae iure labore explicabo quisquam ratione saepe temporibus at, modi sapiente repellendus quod atque iste, aperiam, accusamus non sit eius suscipit odio.',
    price_per_night: 110,
    number_of_guests: 3
  }
]
Flat.create!(flats_attributes)
puts 'Finished!'
