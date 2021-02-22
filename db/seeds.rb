puts "Cleaning up database"
Restaurant.destroy_all
puts "Database is clean"

10.times do
  Restaurant.create(
    name: Faker::Restaurant.name,
    address: Faker::Address.full_address,
    category: %w(chinese italian japanese french belgian).sample
    )
end
