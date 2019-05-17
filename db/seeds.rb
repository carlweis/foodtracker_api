require "faker"

100.times do
  # generate restaurants
  restaurant = Restaurant.create(
    name: Faker::Restaurant.name,
    cuisine: Faker::Restaurant.type,
    description: Faker::Restaurant.description,
    hero_image_url: Faker::LoremPixel.image("400x200", false, "food")
  )
  # generate reviews
  10.times do
    restaurant.reviews.create(
      description: Faker::Restaurant.review,
      rating: [1,2,3,4,5].sample,
      recommended: [true, false].sample
    )
  end
end
