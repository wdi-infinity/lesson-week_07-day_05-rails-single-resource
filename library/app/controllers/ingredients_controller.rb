class IngredientsController < ApplicationController
    
    def index
        @ingredients =  Ingredient.all
     end

     def show
        @ingredients = Ingredient.find(params[:id])
        end
end