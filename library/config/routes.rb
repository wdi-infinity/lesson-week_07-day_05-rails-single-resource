Rails.application.routes.draw do
  resources :articles do
  resources :comments
end
  resources :paintings
  resources :ingredients
  resources :movies
  resources :books
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
