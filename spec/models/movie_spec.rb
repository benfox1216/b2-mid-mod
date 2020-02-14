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
end