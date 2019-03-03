class CreateIngredients < ActiveRecord::Migration[5.2]
    def change
      create_table :ingrediants do |t|
        t.string :name
        t.string :unit
        t.integer :amount
        t.date :purchased_on
        t.boolean :is_rotten
        t.timestamps
      end
    end
end