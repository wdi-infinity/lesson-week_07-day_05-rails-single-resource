class CreateIngredients < ActiveRecord::Migration[5.2]
    def change
    create_table :ingredients do |i|
        i.string:name
        i.string:unit
        i.integer:amount
        i.date:purchased_on
        i.boolean:is_rotten
        
        i.timestamps
    end
    end
end