class CreateBooks < ActiveRecord::Migration[5.2]
  def change 
    create_table :books do |t| #t represents the table 
      t.string :title 
      t.string :author
      t.timestamps #create at , update at shortcut
    end
  end
end