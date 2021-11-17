100.times do
  r = Restaurant.create(
      name: Faker::Restaurant.name,
      address: Faker::Address.street_name,
      rating: rand(1..5)
    )
  puts "restaurant #{r.id} is created."
end

puts "done."
