Rails.application.routes.draw do
   
  root 'welcome#index'
  get 'reviews/create'
  get 'reviews/destroy'
  get 'welcome/index'
 
   resources :articles do
    resources :comments
  end
  resources :movies do
    resources :reviews
  end 
  resources :paintings
 
 


  




#   # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
# get '/books'=>"books#index" ,as:'books' #books_path
# get '/books/new' => "books#new" , as: 'new_book'
# get '/books/:id'=>"books#show", as: 'book' #book_path(book)
# get '/movies' => "movies#index" , as:'movies'
# get '/movies/:id'=>"movies#show", as: 'movie'
# # get '/Ingredients' => "Ingredients#index", as:'Ingredients'
# # get '/Ingredients:id' => "Ingredients#show", as:'Ingredient'
# post '/books' => "books#create"

# resources :articles do
#   resources :comments
# end
resources :books

end
