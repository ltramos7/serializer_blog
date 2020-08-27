#-------------Movie-------------
10.times do
    Movie.create(title: Faker::Movie.title,
                 producer: Faker::Name.name,
                 release_year: Faker::Number.number(digits: 4),
                 genre: Faker::Lorem.word,
                 rating: Faker::Number.within(range: 1..10)
                )
end

#-------------Users-------------
10.times do 
    User.create(name: Faker::FunnyName.two_word_name,
                username: Faker::GreekPhilosophers.name,
                password_digest: "fakePassword",
                bio: Faker::Movies::StarWars.quote,
                age: Faker::Number.decimal_part(digits:2) 
                )
end

#-------------Reviews-------------
10.times do
    Review.create(content: Faker::Quote.famous_last_words,
                  movie: Movie.find(Random.rand(10)+1),
                  user: User.find(Random.rand(10)+1)
                  )
end
