Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/ingredients' => "ingredients#index" #as: 'books'
  get '/ingredients/:id' => "ingredients#show", as: 'ingredient'
end
