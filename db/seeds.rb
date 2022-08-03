require 'faker'

puts "🌱 Seeding spices..."

10.times do
    User.create(
        first_name: Faker::Name.first_name,
        last_name: Faker::Name.last_name,
        email: Faker::Internet.email
    )
end

# Seed your database here

puts "✅ Done seeding!"
