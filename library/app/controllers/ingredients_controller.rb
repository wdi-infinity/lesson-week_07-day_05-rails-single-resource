class IngredientsController < ApplicationController  # To inherit from the class was created by ruby's team
def index 
  @ingredients= Ingredient.all 
end 
def show 
    @ingredient = Ingredient.find(params[:id])
end 
end 