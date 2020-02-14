require 'rails_helper'

describe 'As a user' do
  describe 'when I visit an actor show page' do
    before :each do
      @studio_1 = Studio.create!(name: "Sweet Movies Studio")
      @studio_2 = Studio.create!(name: "Cool Movies Studio")
      
      @movie_1 = @studio_1.movies.create!(name: "Cats 2: Return To Hell", creation_year: 2020, genre: "Horror")
      @movie_2 = @studio_2.movies.create!(name: "The Lion King: Return To Pride Rock: The Wonder Years", creation_year: 2020, genre: "Horror")
      
      @actor_1 = Actor.create!(name: "Bumblemick Slumberstash", age: 43)
      MovieActor.create!(movie_id: @movie_1.id, actor_id: @actor_1.id)
      MovieActor.create!(movie_id: @movie_2.id, actor_id: @actor_1.id)
    end
    
    it "I see their name, age, and a list of the movies they're in" do
      
    end
  end
end