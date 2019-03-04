Rails.application.routes.draw do
  resources :articles
  resources :paintings
  resources :articles do
    resources :comments
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get '/books' => "books#index", as: 'books' #books_path
  # get '/books/new' => "books#new" , as: 'books_new'
  # get '/books/:id' => "books#show", as: 'book' #book_path(book)
  # get '/books/:id/edit' => "books#edit", as: 'books_edit'
  # post '/books' => "books#create"
  # patch 'books/:id' => "books#update"
  # delete '/books/:id' => "books#destroy"
  resources :books


  # get '/movies' => "movies#index" , as: 'movies' 
  # get '/movies/new' => "movies#new" , as: 'movies_new'
  # get '/movies/:id' => "movies#show", as: 'movie' #book_path(book)
  # post '/movies' => "movies#create"
  # get '/movies/:id/edit' => "movies#edit", as: 'movies_edit'
  # patch 'movies/:id' => "movies#update"
  # delete '/movies/:id' => "movies#destroy"
  # resources :movies
  resources :movies

  # get '/ingredients' => "ingredients#index" , as: 'ingredients' #books_path
  # get '/ingredients/:id' => "ingredients#show", as: 'ingredient' #book_path(book)
end
