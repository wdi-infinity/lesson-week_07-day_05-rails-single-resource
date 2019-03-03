Rails.application.routes.draw do
  
resources :articles do
  resources :comments
end
  resources :paintings
  # get '/books' => 'books#index', as: 'books' #books_path
  #  get '/books/new' => "books#new", as:'new_book'
  # get '/books/:id/edit' => "books#edit", as:'edit_book'
   
  # get '/books/:id' => 'books#show', as: 'book' #book_path(book)

  # patch 'books/:id' => 'books#update'

  # post '/books' => "books#create" # user request
  # delete 'books/:id' => "books#destroy"

  resources :books

  # get '/movies' => 'movies#index',as: 'movies'
  # get '/movies/new' => "movies#new", as:'new_movie'
  #  get '/movies/:id/edit' => "movies#edit",  as:'edit_movie'
  # get '/movies/:id' => 'movies#show',as: 'movie'
  # patch 'movies/:id' => 'movies#update'
  #  post '/movies' => "movies#create" # user request
  #  delete 'movies/:id' => "movies#destroy"
  resources :movies
  


  get '/ingredients' => 'ingredients#index', as:'ingredients'
  get '/ingredients/:id' => 'ingredients#show', as: 'ingredient'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
