require 'rails_helper'

describe 'As a user' do
  describe 'when I visit an movie show page' do
    before :each do
      @studio_1 = Studio.create!(name: "Sweet Movies Studio")
      
      @movie_1 = @studio_1.movies.create!(name: "Cats 2: Return To Hell", creation_year: 2020, genre: "Horror")
      
      @actor_1 = Actor.create!(name: "Bumblemick Slumberstash", age: 43)
      @actor_2 = Actor.create!(name: "Johnny Mnemonic", age: 38)
      @actor_3 = Actor.create!(name: "Emma Stoned", age: 35)
      
      MovieActor.create!(movie_id: @movie_1.id, actor_id: @actor_1.id)
      MovieActor.create!(movie_id: @movie_1.id, actor_id: @actor_2.id)
      MovieActor.create!(movie_id: @movie_1.id, actor_id: @actor_3.id)
      
      visit "/movies/#{@movie_1.id}"
    end
    
    it "I see the movies name, creation date and genre, plus the actors sorted by age and their avg age" do
      expect(current_path).to eq("/movies/#{@movie_1.id}")
      expect(page).to have_content("#{@movie_1.name}")
      expect(page).to have_content("#{@movie_1.creation_year}")
      expect(page).to have_content("#{@movie_1.genre}")
      
      expect(page).to have_link("#{@actor_1.name}")
      expect(page).to have_link("#{@actor_2.name}")
      expect(page).to have_link("#{@actor_3.name}")
      
      expect(page).to have_content("Average Age: 38")
    end
  end
end