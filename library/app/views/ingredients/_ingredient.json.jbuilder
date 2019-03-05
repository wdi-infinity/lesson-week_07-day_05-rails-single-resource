json.extract! ingredient, :id, :name, :unit, :amount, :purchased_on, :is_rotten, :created_at, :updated_at
json.url ingredient_url(ingredient, format: :json)
