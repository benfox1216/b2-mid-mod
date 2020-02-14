Movie.delete_all
Studio.delete_all

studio_1 = Studio.create!(name: "Sweet Movies Studio")
studio_2 = Studio.create!(name: "Cool Movies Studio")

movie_1 = studio_1.movies.create!(name: "Cats 2: Return To Hell", creation_year: 2020, genre: "Horror")
movie_2 = studio_1.movies.create!(name: "Star Wars: Episode 354", creation_year: 2020, genre: "Horror")
movie_3 = studio_2.movies.create!(name: "The Lion King: Return To Pride Rock: The Wonder Years", creation_year: 2020, genre: "Horror")
movie_4 = studio_2.movies.create!(name: "Wow: The Epic of Owen Wilson", creation_year: 2020, genre: "Horror")