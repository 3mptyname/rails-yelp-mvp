# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
one = { name: 'One', address: 'Address 1', phone_number: '1234567890', category: 'chinese' }
two = { name: 'Two', address: 'Address 2', phone_number: '1234567890', category: 'italian' }
three = { name: 'Three', address: 'Address 3', phone_number: '1234567890', category: 'japanese' }
four =  { name: 'Four', address: 'Address 4', phone_number: '1234567890', category: 'french' }
five =  { name: 'Five', address: 'Address 5', phone_number: '1234567890', category: 'belgian' }

[one, two, three, four, five].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts 'Finished!'
