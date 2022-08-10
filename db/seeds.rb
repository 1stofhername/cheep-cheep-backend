require 'faker'

puts "🌱 Seeding spices..."

10.times do
    User.create(
        first_name: Faker::Name.first_name,
        last_name: Faker::Name.last_name,
        email: Faker::Internet.email,
        password: Faker::Internet.password(min_length: 8),

    )
end

20.times do
    Message.create(
        user_id: rand(1..10),
        content: Faker::Lorem.sentence,
        conversation_id: rand(1..5)
        
    )
end

5.times do
    Conversation.create(
        message_id: rand(1..10),
        user_id: rand(1..10)
    )
end

# Seed your database here

puts "✅ Done seeding!"
