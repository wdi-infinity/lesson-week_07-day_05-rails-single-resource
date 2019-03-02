Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/books' => "books#index", as: 'books'
  # first named router the books is controller and the index is method inside books controller 
  get '/books/:id' => "books#show", as: 'book'
  #movies
  get '/movies' => "movies#index", as: 'movies'
  get '/movies/:id' => "movies#show", as: 'movie'
  # ingredients
  get '/ingredients' => "ingredients#index", as:'ingredients'
  get '/ingredients/:id' => "ingredients#show", as:'ingredient'
end
