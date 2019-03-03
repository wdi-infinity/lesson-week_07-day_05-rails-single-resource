class IngredientsController < ApplicationController
    def index
       @ingredients= ingredient.all
    end

    def show
        @ingredient = ingredient.find(params[:id])
    end
end