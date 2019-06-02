# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#Faker
i = 1;
100.times do
    User.create(
        name: Faker::Name.first_name,
        surname: Faker::Name.last_name,
        born_date: Faker::Date.birthday(18, 65),
        age: Faker::Number.between(1, 10),
        password_digest: Faker::Types.rb_string,
        latitude: Faker::Number.number(10),
        longitude: Faker::Number.number(10),
        notifications: Faker::Boolean.boolean,
        email: Faker::Internet.email,
    )

    Category.create(
        name: Faker::Book.genre,
    )

    Event.create(
        borough: Faker::Address.state,
        date_of_event: Faker::Date.forward(23),
        name: Faker::Types.rb_string,
        description: Faker::Lorem.sentences(1),
        cost: Faker::Number.normal(50, 3.5),
        type_of_public: Faker::Lorem.word,
        over: Faker::Boolean.boolean,
        latitude: Faker::Number.number(10),
        longitude: Faker::Number.number(10),
        address: Faker::Address.full_address,
        user_id: i
    )


    Comment.create(
        comment: Faker::String.random,
        user_id: i,
        event_id: i
    )

    Image.create(
        path: Faker::Placeholdit.image,
    )

    Interest.create(
        name: Faker::Types.rb_string
    )

    Score.create(
        score: Faker::Number.between(1, 5),
        user_id: i,
        event_id: i
    )

i = i+ 1;
end

6.times do
    Administrator.create(
        name: Faker::Name.first_name,
    )
end