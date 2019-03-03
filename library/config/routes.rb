Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/books' => "books#index", as:'books' #books_path # create a git request for the books for the controller and then run the index method
  get '/books/:id' => "books#show", as: 'book' #book_path (book)
  get '/movies' => "movies#index"
  get '/movies/:id' => "movies#show", as: 'movie'
  get '/ingredients' => "ingredients#index"
  get '/ingredients/:id' => "ingredients#show", as: 'ingredient'


end
