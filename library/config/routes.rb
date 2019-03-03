Rails.application.routes.draw do
  # resources :articles
  resources :articles do
    resources :comments
  end
  
  resources :paintings
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get '/books' => "books#index", as: 'books' ## idex the method name inside index.html.erb
  # get '/books/new' => "books#new", as: 'new_book'
  # get '/books/:id/edit' => "books#edit", as: 'edit_book'
  # get '/books/:id' => "books#show", as: 'book'
  # post '/books' => "books#create"
  # patch '/books/:id' => "books#update"
  # delete '/books/:id' => "books#destroy"
  resources :books

  # get '/movies' => "movies#index", as: 'movies'
  # get '/movies/new' => "movies#new", as: 'new_movie'
  # get '/movies/:id/edit' => "movies#edit", as: 'edit_movie'
  # get '/movies/:id' => "movies#show", as: 'movie'
  # post '/movies' => "movies#create"
  # patch '/movies/:id' => "movies#update"
  # delete '/movies/:id' => "movies#destroy"
  resources :movies

  get '/ingredients' => "ingredients#index", as: 'ingredients'
  get '/ingredients/:id' => "ingredients#show", as: 'ingredient'

end
