
class Show < ActiveRecord::Base

  
  def self.highest_rating 
    Show.maximum(:rating)
  end 

  def self.most_popular_show 
    Show.find_by("rating = ?", highest_rating)
  end 
  
  def self.lowest_rating 
    Show.minimum(:rating)
  end 
  
  def self.least_popular_show 
    Show.find_by("rating = ?", lowest_rating)
  end 

  def self.ratings_sum 
    self.sum(:rating)
  end 
  
  def self.popular_shows
    Show.find_by("rating > ?", 5)
  end 

  


end 

