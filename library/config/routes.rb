Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
get '/books'  => "books#index" , as:'books'#books_path # the eniter thing. Books , people etc 
get '/books/new' => "books#new", as: 'new_book' #create new book. or form  . book_path(new_book)
# We added ==> get '/books/new' => "books#new" before the => get '/books/:id' so it doesnt think new is an ID like page number after books ==>/books/new !== /books/1 or 2 etc  

#update*
get '/books/:id/edit' => "books#edit", as: "edit_book"
get '/books/:id' => "books#show", as:'book' # book_path(book) # just give me back one book/page
#1*First part before the arrow: accept a get request for /books --> when I type /books in the local host url , this should run /books 
# After the arrow --> books is the contoller --> The hash means 'GET' --> index is the method for contoller 

post '/books' => "books#create" # Post is where we accepet user's input . Users are submmiting the data 
patch '/books/:id' => "books#update"

delete '/books/:id' =>  "books#destroy"



get '/movies' => 'movies#index', as: 'movies'
get '/movies/new' => "movies#new", as: 'new_movie' # group work 

#edit
get '/movies/:id/edit' => "movies#edit", as: "edit_movie"


get '/movies/:id' => 'movies#show', as: 'movie'

post '/movies' => "movies#create"  # group work

patch '/movies/:id' => "movies#update"

delete '/movies/:id' =>  "movies#destroy"


get '/ingredients' => 'ingredients#index', as: 'ingredients'
get '/ingredients/:id' => 'ingredients#show', as: 'ingredient'

#up2

end