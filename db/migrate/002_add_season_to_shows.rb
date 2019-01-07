

class AddSeasonToShows < ActiveRecord::Migration[5.2]
  
  
  def change 
    update_table :shows do |t|
      t.string :name 
  end 
  
  
end 