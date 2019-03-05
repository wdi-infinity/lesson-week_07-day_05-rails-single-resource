Rails.application.routes.draw do
root 'welcome#index'
  get 'welcome/index'
  get 'reviews/create'
  get 'reviews/destroy'
resources :articles do
  resources :comments
end
resources :movies do
  resources :reviews
end
  resources :paintings
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
# it go to the index method and run it 
#   get '/books' =>"books#index",as:'books' # books_path
# # the order is important
#   get '/books/new' => "books#new" ,as: 'new_book'
# post '/books' => "books#create"
# patch '/books/:id' => "books#update"
# get '/books/:id/edit' => "books#edit",as:'edit_book'
# # show means give me back one 
# get '/books/:id' =>"books#show",as:'book' #book_path(book)

# delete '/books/:id' =>"books#destroy" 
resources :books
# ##############################################

# get '/movies' =>"movies#index",as:'movies'
# get '/movies/new' => "movies#new" ,as: 'new_movie'
# post '/movies' => "movies#create"
# get '/movies/:id/edit' => "movies#edit",as:'edit_movie'
# patch '/movies/:id' => "movies#update"
# get '/movies/:id' =>"movies#show",as:'movie'
# delete '/movies/:id' =>"movies#destroy" 

########################################

get '/ingredients' =>"ingredients#index",as:'ingredients'
get '/ingredients/:id' =>"ingredients#show",as:'ingredient'

end