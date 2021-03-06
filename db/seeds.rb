# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

25.times do
  Flat.create!(
    name: "#{Faker::HitchhikersGuideToTheGalaxy.location} in #{Faker::Address.community}",
    address: Faker::Address.full_address,
    description: Faker::HitchhikersGuideToTheGalaxy.quote,
    price_per_night: (rand()*300).to_i + 1,
    number_of_guests: (rand()*10).to_i + 1,
    image_url: 'https://picsum.photos/200/300?image=' + (rand() * 30).to_i.to_s
  )
end