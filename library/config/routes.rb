Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/books' => "books#index"
  get '/books/new' => "books#new", as: 'new_book'
  get '/books/:id' => "books#show", as: 'book'
  delete '/books/:id' => "books#destroy"
  post '/books' => "books#create"
  get '/books/:id/edit' => "books#edit", as: "edit_book"
  patch '/books/:id' => "books#update"
  get '/movies' => "movies#index"
  get '/movies/new' => "movies#new", as: 'new_movie'
  get '/movies/:id' => "movies#show", as: 'movie'
  post '/movies' => "movies#create"
  delete '/movies/:id' => "movies#destroy"
  get '/movies/:id/edit' => "movies#edit", as: "edit_movie"
  patch '/movies/:id' => "movies#update"
  get '/ingredients' => "ingredients#index"
  get '/ingredients/:id' => "ingredients#show", as: 'ingredient'
end
