    # This file should contain all the record creation needed to seed the database with its default values.
    # The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
    #
    # Examples:
    #
    #   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
    #   Character.create(name: 'Luke', movie: movies.first)


    60.times do
      User.create( name: Faker::Name.name )
    end

        history = Category.create(name: 'history', priority: 1)
      philosophy = Category.create(name: 'philosophy', priority: 2)
    engineering = Category.create(name: 'engineering', priority: 3)
            art = Category.create(name: 'art', priority: 4)
    astrophysics = Category.create(name: 'astrophysics', priority: 5)
      psychology = Category.create(name: 'psychology', priority: 6)

      User.all.each do |author|
        random = 1 + rand(6)
        Article.create(
          title: Faker::Lorem.sentence(word_count: 3),
          text: Faker::Lorem.paragraph(sentence_count: 40),
          category_id: random,
          user_id: author.id
        )
      end

      Article.all.each do |art|
        rand_img = 1 + rand(3)
        art.image.attach(
          io: File.open("app/assets/images/#{rand_img}.jpg"),
          filename: "#{rand_img}.jpg"
        )
        art.save
      end

      60.times do
        rand_usr = 1 + rand(60)
        rand_art = 1 + rand(60)
        Vote.create( article_id: rand_art, user_id: rand_usr )
      end
