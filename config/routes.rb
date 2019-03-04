Rails.application.routes.draw do
  resources :ingredients
  resources :movies
  resources :books
  resources :articles do
    resources :comments
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
