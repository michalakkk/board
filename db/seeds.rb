Ad.destroy_all


33.times do
	Ad.create(
		title: Faker::Commerce.product_name,
		description: Faker::Lorem.paragraphs,
		price: Faker::Number.decimal(2),
		category_id: 1 + rand(6),
		user_id: 1 + rand(2)
		)
end

puts "Poszlo"