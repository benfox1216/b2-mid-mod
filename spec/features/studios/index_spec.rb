require 'rails_helper'

describe 'As a user' do
  describe 'when I visit the studio index page' do
    before :each do
      @studio_1 = Studio.create!(name: "Sweet Movies Studio")
      @studio_2 = Studio.create!(name: "Cool Movies Studio")
      
      @movie_1 = @studio_1.movies.create!(name: "Cats 2: Return To Hell", creation_year: 2020, genre: "Horror")
      @movie_2 = @studio_1.movies.create!(name: "Cats 2: Return To Hell", creation_year: 2020, genre: "Horror")
      @movie_3 = @studio_2.movies.create!(name: "Cats 2: Return To Hell", creation_year: 2020, genre: "Horror")
      @movie_4 = @studio_2.movies.create!(name: "Cats 2: Return To Hell", creation_year: 2020, genre: "Horror")
    end
    
    it 'I see a list of all the studios, with their movies listed below them' do
      
    end
  end
end