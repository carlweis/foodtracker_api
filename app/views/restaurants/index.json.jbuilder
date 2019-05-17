json.restaurants @restaurants.each do |restaurant|
  json.name restaurant.name
  json.cuisine restaurant.cuisine
  json.description restaurant.description
  json.image_url restaurant.hero_image_url
  json.favorite restaurant.favorite
  json.created_at restaurant.created_at
  json.reviews restaurant.reviews do |review|
    json.description review.description
    json.rating review.rating
    json.recommended review.recommended
  end
end
