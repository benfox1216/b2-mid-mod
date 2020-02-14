require 'rails_helper'

describe Studio do
  describe 'Validations' do
    it {should validate_presence_of :name}
    it {should validate_presence_of :creation_year}
    it {should validate_presence_of :genre}
  end
  
  describe 'Relationships' do
		it {should belong_to :studio}
	end

end