Rails.application.routes.draw do
  resources :paintings
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get '/books' => "books#index", as: 'books' #books_path
  # get 'books/new' => "books#new", as: 'new_book'
  # get '/books/:id/edit' => "books#edit", as: 'edit_book' #book_path(book)
  # get '/books/:id' => "books#show", as: 'book' #book_path(book)
  # post '/books' => "books#create"
  # patch '/books/:id' => "books#update"
  # delete '/books/:id' => "books#destroy"
  
resources :books
resources  :movies

end
