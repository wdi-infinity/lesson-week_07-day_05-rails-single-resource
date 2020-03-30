class AddUrlToPaintings < ActiveRecord::Migration[5.2]
  def change
    add_column :paintings, :url, :text
  end
end
