class Movie < ApplicationRecord
  validates_presence_of :name
  validates_presence_of :creation_year
  validates_presence_of :genre
  
  belongs_to :studio
end