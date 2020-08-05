puts 'Cleaning database...MFK'
Restaurant.destroy_all
puts 'Creating restaurants...MFK'
50.times do
  Restaurant.create!(
    name: Faker::Games::Witcher.character,
    address: Faker::Address.street_address,
    category: Restaurant::CATEGORY.sample,
    phone_number: Faker::PhoneNumber.cell_phone
  )
end
puts "Created #{Restaurant.count} restaurants..."
