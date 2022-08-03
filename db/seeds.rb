require 'faker'

puts "🌱 Seeding spices..."

10.times do
    User.create(
        first_name: Faker::Name.first_name,
        last_name: Faker::Name.last_name,
        email: Faker::Internet.email
    )
end

10.times do
    Community.create(
        title: Faker::Book.title,
        description: Faker::Lorem.paragraph(sentence_count: 2),
        category: Faker::Lorem.word,
        user_id: rand(1..5)

    )
end

# Seed your database here

puts "✅ Done seeding!"
