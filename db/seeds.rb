Movie.delete_all
Studio.delete_all

studio_1 = Studio.create!(name: "Sweet Movies Studio")
studio_2 = Studio.create!(name: "Cool Movies Studio")

movie_1 = studio_1.movies.create!(name: "Cats 2: Return To Hell", creation_year: 2020, genre: "Horror")
movie_2 = studio_1.movies.create!(name: "Cats 2: Return To Hell", creation_year: 2020, genre: "Horror")
movie_3 = studio_2.movies.create!(name: "Cats 2: Return To Hell", creation_year: 2020, genre: "Horror")
movie_4 = studio_2.movies.create!(name: "Cats 2: Return To Hell", creation_year: 2020, genre: "Horror")