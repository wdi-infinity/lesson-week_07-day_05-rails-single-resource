class CreateMovies < ActiveRecord::Migration[5.2]
  def change 
    create_table :movies do |t| #t represents the table 
      t.string :title 
      t.string :director
      t.integer :rating
      t.timestamps #create at , update at shortcut
    end
  end
end