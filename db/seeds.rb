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

10.times do
    CommunitySub.create(
        user_id: 1,
        community_id: rand(1..10)
    )
end

10.times do 
    Activity.create(
        title: Faker::Book.title,
        description: Faker::Lorem.paragraph(sentence_count: 2),
        # type: Faker::Lorem.word,
        community_id: rand(1..5)
    )
end

10.times do
    ActivitySub.create(
        activity_id: rand(1..5),
        user_id: rand(1..5)
    )
end

5.times do
    Conversation.create(
        activity_id: rand(1..5),
        user_id: rand(1..5)
        
    )
end

30.times do
    Message.create(
        user_id: rand(1..5),
        content: Faker::Lorem.paragraph(sentence_count: 2)
        
    )
end

# Seed your database here

puts "✅ Done seeding!"
