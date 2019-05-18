Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :scores
  resources :events
  resources :users 
  resources :administrators
  resources :categories
  resources :comments
  resources :images
  resources :interests
end
