class IngredientsController < ApplicationController
def index
      @ingredients = Ingredients.all
    end
    def show
        @ingredient = Ingredients.find(params[:id])
    end
end