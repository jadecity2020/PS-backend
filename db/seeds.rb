# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Spend.create([
    {category:'Grocery', amount:19.99},
    {category:'Grocery', amount:13.99},
    {category:'Gas/Transportation', amount:40.68},
    {category:'Food/Restaurants', amount:50.00},
])

Income.create([
    {amount: 200},
    {amount: 30}
])