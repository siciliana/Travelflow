Travelflow::Application.routes.draw do

  root :to => 'questions#index'

  get "tag/index"

  resources :questions
  resources :answers
  resources :users
  resources :tags
  post '/signup' => 'users#create'
  post '/login' => 'users#login'
  get '/logout' => 'users#logout'

end
