require 'rails_helper'

describe Movie do
  describe 'Validations' do
    it {should validate_presence_of :name}
    it {should validate_presence_of :creation_year}
    it {should validate_presence_of :genre}
  end
  
  describe 'Relationships' do
		it {should belong_to :studio}
    
    it {should have_many :movie_actors}
    it {should have_many(:actors).through(:movie_actors)}
	end
  
  describe 'Methods' do
    before :each do
      @studio_1 = Studio.create!(name: "Sweet Movies Studio")
      
      @movie_1 = @studio_1.movies.create!(name: "Cats 2: Return To Hell", creation_year: 2020, genre: "Horror")
      
      @actor_1 = Actor.create!(name: "Bumblemick Slumberstash", age: 43)
      @actor_2 = Actor.create!(name: "Johnny Mnemonic", age: 38)
      @actor_3 = Actor.create!(name: "Emma Stoned", age: 35)
      
      MovieActor.create!(movie_id: @movie_1.id, actor_id: @actor_1.id)
      MovieActor.create!(movie_id: @movie_1.id, actor_id: @actor_2.id)
      MovieActor.create!(movie_id: @movie_1.id, actor_id: @actor_3.id)
    end
    
    it "#actors_sorted" do
      #DID NOT GET TO SPECIFICALLY TESTING THE ORDER
    end
    
    it "#avg_age_of_actors" do
      expect(@movie_1.avg_age_of_actors).to eq(38)
    end
  end
end