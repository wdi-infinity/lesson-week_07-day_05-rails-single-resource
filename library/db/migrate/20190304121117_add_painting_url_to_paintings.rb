class AddPaintingUrlToPaintings < ActiveRecord::Migration[5.2]
  def change
    add_column :paintings, :paint, :text
  end
end
