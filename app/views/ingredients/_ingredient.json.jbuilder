json.extract! ingredient, :id, :name, :unit, :amount, :created_at, :updated_at
json.url ingredient_url(ingredient, format: :json)
