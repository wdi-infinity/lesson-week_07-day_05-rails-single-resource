Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get '/books' => "books#index", as: 'books' #books_path
  # get '/books/:id' => "books#show", as: 'book' #book_path(book)
  # get '/movies' => "movies#index"
  # get '/movies/:id' => "movies#show", as: 'movie' #book_path(book)
  get '/ingredients' => "ingredients#index" , as: 'ingredients' #books_path
  get '/ingredients/:id' => "ingredients#show", as: 'ingredient' #book_path(book)
end
