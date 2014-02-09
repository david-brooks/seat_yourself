# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
categories = [
  "Fast Food",
  "Italian",
  "Pub fare",
  "Fine Dining",
  "Pizza",
  "Chinese",
  "Steak"
]

categories.each do |name| 
  Category.create(:name => name)
end

fast = Category.where(:name => "Fast Food").first
pizza = Category.where(:name => "Pizza").first

Restaurant.create(
  :name => "Burito Boyz",
  :address => "254 Adelaide St.",
  :phone => "",
  :description => "Whoppers!",
  :category => fast,
  :capacity => 1
)

Restaurant.create(
  :name => "Jollibee",
  :address => "100 Manilla Philipines St W",
  :phone => "555-1212",
  :description => "Burgers!",
  :category => fast,
  :capacity => 1
)

Restaurant.create(
  :name => "Korean Barbecue",
  :address => "123 Seoul St.",
  :phone => "967-1111",
  :description => "Chewy seaweed!",
  :category => Fine Dining,
  :capacity => 1
)

Restaurant.create(
  :name => "Tao Chinese Buffett",
  :address => "789 Bejing St.",
  :phone => "333-3333",
  :description => "Yummy Chinese food yummmm!",
  :category => Chinese,
  :capacity => 1
)