Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
get '/books'  => "books#index" , as:'books'#books_path # the eniter thing. Books , people etc 
get '/books/:id' => "books#show", as:'book' # book_path(book) # just give me back one 
#1*First part before the arrow: accept a get request for /books --> when I type /books in the local host url , this should run /books 
# After the arrow --> books is the contoller --> The hash means 'GET' --> index is the method for contoller 
get '/movies' => 'movies#index', as: 'movies'
get '/movies/:id' => 'movies#show', as: 'movie'

get '/ingredients' => 'ingredients#index', as: 'ingredients'
get '/ingredients/:id' => 'ingredients#show', as: 'ingredient'

#up2

end