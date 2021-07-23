    # This file should contain all the record creation needed to seed the database with its default values.
    # The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
    #
    # Examples:
    #
    #   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
    #   Character.create(name: 'Luke', movie: movies.first)


    10.times do
      User.create( name: Faker::Name.name )
    end

        history = Category.create(name: 'history', priority: 1)
      philosophy = Category.create(name: 'philosophy', priority: 2)
    engineering = Category.create(name: 'engineering', priority: 3)
            art = Category.create(name: 'art', priority: 4)
    astrophysics = Category.create(name: 'astrophysics', priority: 5)
      psychology = Category.create(name: 'psychology', priority: 6)
