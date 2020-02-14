class Movie < ApplicationRecord
  validates_presence_of :name
  validates_presence_of :creation_year
  validates_presence_of :genre
  
  belongs_to :studio
  has_many :movie_actors
  has_many :actors, through: :movie_actors
  
  def actors_sorted
    self.actors.sort_by(&:age)
  end
  
  def avg_age_of_actors
    ages = self.actors.select(:age)
    ages.average(:age).to_i
  end
end