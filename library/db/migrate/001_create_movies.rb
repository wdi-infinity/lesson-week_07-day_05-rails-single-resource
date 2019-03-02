class CreateMovies < ActiveRecord::Migration[5.2]
    def change
    create_table :movies do |m|
        m.string:director
        m.string:title
        m.integer:rating
        
        m.timestamps
    end
    end
end