Food.destroy_all
Review.destroy_all


10.times do |index|
  Food.create!(name: Faker::Food.ingredient,
                price: Faker::Number.between(1,100),
                origin: Faker::Address.country)
end

p "Created #{Food.count} foods"

20.times do |index|
  Food.create!(name: Faker::Food.dish,
                price: Faker::Number.between(1,100),
                origin: Faker::Address.country)
end

p "Created #{Food.count} foods"

20.times do |index|
  Food.create!(name: Faker::Food.spice,
                price: Faker::Number.between(1,100),
                origin: Faker::Address.country)
end

p "Created #{Food.count} foods"

8.times do |index|
  author = Faker::Artist.name
  Review.create!(author: author,
                 content_body: Faker::Lorem.paragraph_by_chars(50, 250),
                 rating: Faker::Number.between(0,5),
                 food_id: Food.all[3].id)
end

3.times do |index|
  author = Faker::Artist.name
  Review.create!(author: author,
                 content_body: Faker::Lorem.paragraph_by_chars(50, 250),
                 rating: Faker::Number.between(0,5),
                 food_id: Food.all[9].id)
end

3.times do |index|
  author = Faker::Artist.name
  Review.create!(author: author,
                 content_body: Faker::Lorem.paragraph_by_chars(50, 250),
                 rating: Faker::Number.between(0,5),
                 food_id: Food.all[2].id)
end

4.times do |index|
  author = Faker::Artist.name
  Review.create!(author: author,
                 content_body: Faker::Lorem.paragraph_by_chars(50, 250),
                 rating: Faker::Number.between(0,5),
                 food_id: Food.all[0].id)
end




p "Created #{Review.count} reviews"
p "Created #{Food.count} foods"
