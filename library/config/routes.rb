Rails.application.routes.draw do
  get 'welcome/index'
  root 'welcome#index'
  get 'reviews/create'
  get 'reviews/destroy'
  resources :articles
  resources :paintings
  resources :welcome
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get '/books' => "books#index", as:'books' #books_path # create a git request for the books for the controller and then run the index method
  # get '/books/new'  => "books#new" , as: 'new_book'
  # get '/books/:id/edit' => "books#edit" , as: 'edit_book'
  # get '/books/:id' => "books#show", as:'book' #book_path (book)
  # get '/ingredients' => "ingredients#index"
  # get '/ingredients/:id' => "ingredients#show", as: 'ingredient'
  # post '/books' => "books#create" # , as: 'books'
  # delete '/books/:id' => "books#destroy"
  # post '/movies' => "movies#create" # , as: 'books'
  # patch '/books/:id' => "books#update"
  # get '/movies' => "movies#index"
  # get '/movies/new'  => "movies#new" , as: 'new_movie'
  # get '/movies/:id/edit' => "movies#edit" , as: 'edit_movie'
  # get '/movies/:id' => "movies#show", as: 'movie'
  # delete '/movies/:id' => "movies#destroy"
  # patch '/movies/:id' => "movies#update"
  resources :books
  resources :movies do #movies/:id/reviews
    resources :reviews
  end
  resources :ingredients
  resources :articles do
  resources :comments
end
end
