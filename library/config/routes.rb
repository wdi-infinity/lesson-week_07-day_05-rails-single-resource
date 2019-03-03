Rails.application.routes.draw do
  resources :articles
  resources :paintings
  resources :books
  resources  :movies

  resources :articles do
  resources :comments
end

get '/ingredients' => "ingredients#index", as: 'ingredients' #books_path
get '/ingredients/:id' => "ingredients#show", as: 'ingredient' #book_path(book)


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get '/books' => "books#index", as: 'books' #books_path
  # get 'books/new' => "books#new", as: 'new_book'
  # get '/books/:id/edit' => "books#edit", as: 'edit_book' #book_path(book)
  # get '/books/:id' => "books#show", as: 'book' #book_path(book)
  # post '/books' => "books#create"
  # patch '/books/:id' => "books#update"
  # delete '/books/:id' => "books#destroy"

end
