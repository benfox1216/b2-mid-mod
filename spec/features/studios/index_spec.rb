require 'rails_helper'

describe 'As a user' do
  describe 'when I visit the studio index page' do
    before :each do
      @studio_1 = Studio.create!(name: "Sweet Movies Studio")
      @studio_2 = Studio.create!(name: "Cool Movies Studio")
      
      @movie_1 = @studio_1.movies.create!(name: "Cats 2: Return To Hell", creation_year: 2020, genre: "Horror")
      @movie_2 = @studio_1.movies.create!(name: "Star Wars: Episode 354", creation_year: 2020, genre: "Horror")
      @movie_3 = @studio_2.movies.create!(name: "The Lion King: Return To Pride Rock: The Wonder Years", creation_year: 2020, genre: "Horror")
      @movie_4 = @studio_2.movies.create!(name: "Wow: The Epic of Owen Wilson", creation_year: 2020, genre: "Horror")
      
      visit '/studios'
    end
    
    it 'I see a list of all the studios, with their movies listed below them' do
      expect(current_path).to eq("/studios")
      
      within "#studio-#{@studio_1.id}" do
        expect(page).to have_content("#{@studio_1.name}")
        expect(page).to have_link("@movie_1.name")
        expect(page).to have_link("@movie_2.name")
      end
      
      within "#studio-#{@studio_2.id}" do
        expect(page).to have_content("#{@studio_2.name}")
        expect(page).to have_link("@movie_3.name")
        expect(page).to have_link("@movie_4.name")
      end
    end
  end
end