class IngredientsController < ApplicationController

    def index
        @ingredients = Ingredient.all
    end

    def show 
        @ingredient = Ingredient.find(params[:id])
    end
end 

# Book.create({title: 'mikes book', author: 'the best book'})

# Ingredient.create({name:'laban milk',unit:'liter',amount:6,purchased_on:'2029-01-07',is_rotten: true})