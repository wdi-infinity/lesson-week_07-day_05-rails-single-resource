class IngredientsController<ApplicationController
    def index 
       @Ingredients= Ingredients.all
    end 
    def show 
        @Ingredient = Ingredients.find(params[:id])
    end 
    

end