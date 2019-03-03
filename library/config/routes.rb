Rails.application.routes.draw do
  get '/books' => "books#index", as:'books'  #books_path
  get '/books/:id' => 'books#show', as: 'book' #book_path(book)
  get  'movies' => "movies#index", as:'movies'
  get '/movies/:id' => 'movies#show', as: 'movie'
  get '/ingredients' => "ingredients#index", as:'ingredients'  
  get '/ingredients/:id' => 'ingredients#show', as: 'ingredient' 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
