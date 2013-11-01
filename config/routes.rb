Travelflow::Application.routes.draw do

  root :to => 'questions#index'

  # get "tag/index"

  resources :questions
  resources :answers
  resources :users
  resources :tags

  post '/login' => 'users#login'
  get '/logout' => 'users#logout'
  get 'questions/tag' => 'questions#tag', as: 'tag_question'

end
