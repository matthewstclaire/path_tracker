# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Workout.destroy_all
Comment.destroy_all

3.times do
    User.create(name: Faker::JapaneseMedia::DragonBall.character,
        email: Faker::Internet.email,
        password: "password")
end

10.times do
    Workout.create(workout_name: "Workout Day 1",
        warmup: Faker::Movie.quote,
        power: Faker::Movie.quote,
        endurance: Faker::Movie.quote)
end

10.times do
    Comment.create(content: "This workout was really hard!",
    user_id: rand(1..3),
    workout_id: rand(1..10))
end
