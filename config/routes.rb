Rails.application.routes.draw do
  
  
#En route.rb, definimos rutas para usuarios que usan recursos. la sintaxis de recursos nos ayuda a generar la ruta de patrón de REST API para el usuario usando _username como parámetro. 
#Así que se verá como nuestra tabla de API REST arriba.
  
  resources :users, param: :_username
  post '/auth/login', to: 'authentication#login'
  get '/*a', to: 'application#not_found'
  
  
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
