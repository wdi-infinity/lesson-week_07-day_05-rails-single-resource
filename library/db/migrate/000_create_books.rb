class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
        # add new column into our database 
        #  t= table , the type is string 
        t.string :title
        t.string :author
        
      t.timestamps
    end
  end
end