Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
get '/books'=>"books#index" ,as:'books' #books_path
get '/books/:id'=>"books#show", as: 'book' #book_path(book)
get '/movies' => "movies#index" , as:'movies'
get '/movies/:id'=>"movies#show", as: 'movie'
get '/Ingredients' => "Ingredients#index", as:'Ingredients'
get '/Ingredients:id' => "Ingredients#show", as:'Ingredient'
end
