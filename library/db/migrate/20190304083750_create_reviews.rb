class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.string :reviewer
      t.text :body
      t.integer :rating
      t.references :movie, foreign_key: true

      t.timestamps
    end
  end
end
