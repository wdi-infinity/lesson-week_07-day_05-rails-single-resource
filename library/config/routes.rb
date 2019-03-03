Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'books' => "books#index"
  get '/books/:id' => "books#show", as: 'book'
  get 'movies' => "movies#index"
  get '/movies/:id' => "movies#show", as: 'movie'
  get '/ingredients' => "ingredients#index"
  get '/ingredients/:id' => "ingredients#show", as: 'ingredient'
end
