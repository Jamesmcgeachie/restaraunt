# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

cuisines = ["Thai", "Italian", "Continental"]
cuisines.each do |name|
	c = CuisineType.create(name: name)
10.times do
	r = Restaurant.new
	r.name = Faker::Book.title
	r.cuisine_types << c
	r.save
	end
end