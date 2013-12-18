# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

restaurants = [
	{:name => "Tahona Tequila Bistro", :location => "1035 Pearl St, Boulder, CO", :cuisine => "mexican", :averagePrice => 5, :averageRating => 4, :totalReviews => 23, :website => "http://www.tahonaboulder.com/"},
	{:name => "Brasserie Ten Ten", :location => "1011 Walnut St, Boulder, CO", :cuisine => "french", :averagePrice => 3, :averageRating => 4, :totalReviews => 75, :website => "http://www.brasserietenten.com/"},
	{:name => "PastaVino", :location => "1043 Pearl St, Boulder, CO", :cuisine => "italian", :averagePrice => 4, :averageRating => 3, :totalReviews => 18, :website => "http://pastavino.com/"},
	{:name => "Cafe Mexicali", :location => "2850 Baseline Rd #1, Boulder, CO", :cuisine => "mexican", :averagePrice => 2, :averageRating => 3, :totalReviews => 33, :website => "http://cafemexicali.com/"},
	{:name => "Garbanzo", :location => "1905 29th St, Boulder, CO", :cuisine => "mediterranean", :averagePrice => 2, :averageRating => 4, :totalReviews => 55, :website => "http://www.eatgarbanzo.com/"},
	{:name => "Pei Wei", :location => "1675 29th St #1284, Boulder, CO", :cuisine => "asian fusion", :averagePrice => 2, :averageRating => 3, :totalReviews => 19, :website => "http://www.peiwei.com/index.aspx"},
	{:name => "McDonald's", :location => "1800 28th St, Boulder, CO", :cuisine => "american", :averagePrice => 1, :averageRating => 2, :totalReviews => 20, :website => "http://www.mcdonalds.com/us/en/home.html"},
	{:name => "The Kitchen", :location => "1039 Pearl St, Boulder, CO", :cuisine => "american", :averagePrice => 5, :averageRating => 1, :totalReviews => 119, :website => "http://thekitchen.com/the-kitchen-boulder/"}]

	restaurants.each do |restaurant|
		Restaurant.create!(restaurant)
	end

	users = [
		{:location => "Boulder, C0 80303", :username => "RoofPizza", :email => "RoofPizza@hotmail.com", :password => "bitch"},
		{:location => "Boulder, C0 80303", :username => "Jessie", :email => "Jessie@hotmail.com", :password => "James"}]



	users.each do |user|
		User.create!(user)
	end

	reviews = [
		{:user => User.find(1), :restaurant => Restaurant.find(1), :stars => 5, :price => 3, :content => "I like Tahona a lot!"},
		{:user => User.find(2), :restaurant => Restaurant.find(1), :stars => 2, :price => 4, :content => "I don't like mexican food..."},
		{:user => User.find(2), :restaurant => Restaurant.find(2), :stars => 4, :price => 4, :content => "I think B1010 is good."}
	]

	reviews.each do |review|
		Review.create!(review)
	end
