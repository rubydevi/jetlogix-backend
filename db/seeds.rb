# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# Create a dummy User
User.create(name: 'John')

# Create some sample aeroplanes
Aeroplane.create(name: 'Aeroplane 1', model: 'jet', image: 'image1', description: 'yolo', number_of_seats: 100, location: 'test', fee: 90.0, reserved: true)
Aeroplane.create(name: 'Aeroplane 2', model: 'jet', image: 'image1', description: 'yolo', number_of_seats: 100, location: 'test', fee: 90.0, reserved: true)
Aeroplane.create(name: 'Aeroplane 3', model: 'jet', image: 'image1', description: 'yolo', number_of_seats: 100, location: 'test', fee: 90.0, reserved: true)
