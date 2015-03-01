# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
categories= ["Family", "Work", "School"]
100.times do
  ToDo.create(title: Faker::Commerce.product_name, description: Faker::Lorem.sentence,
  category: categories.sample, due_at: Faker::Date.forward(23))
end
