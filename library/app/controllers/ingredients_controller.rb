class IngredientsController < ApplicationController
def index 
@ingrediants = Ingredient.all
end
end