Rails.application.routes.draw do


#En route.rb, definimos rutas para usuarios que usan recursos. la sintaxis de recursos nos ayuda a generar la ruta de patrón de REST API para el usuario usando _username como parámetro.
#Así que se verá como nuestra tabla de API REST arriba.

  resources :users
  post '/auth/login', to: 'authentication#login'
#  get '/*a', to: 'application#not_found'
  get :generate_pdf, to: "events#generate_pdf"


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :scores
  resources :events
  resources :users
  resources :administrators
  resources :categories
  resources :comments
  resources :images
  resources :interests
  resources :searchage
  resources :user_image
  resources :event_image
  resources :statistic_cost
  resources :statistic_categories
  resources :event_filter
  resources :search_filter
  resources :pdfsend
end
