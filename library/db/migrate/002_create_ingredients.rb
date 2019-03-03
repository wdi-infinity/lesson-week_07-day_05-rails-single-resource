class CreateIngredients < ActiveRecord::Migration[5.2]
  def change 
    create_table :ingredients do |t| #t represents the table 
      t.string :name
      t.string :unit
      t.integer :amount
      t.date :purchased_on
      t.boolean :is_rotten
      t.timestamps #create at , update at shortcut
    end
  end
end