Rails.application.routes.draw do
  # get 'chores/index'
  # get 'chores/new'
  # post 'chores/new' => 'chores#create'
  # get 'chores/edit'
  # get 'chores/show'

  resources :chores, except: [:show]
  get 'chores/pick_chore'
  post 'chores/pick_chore' => 'chores#add'

  get 'chores/assign'
  post 'chores/assign' => 'chores#get_user'


  root :to => 'pages#home'
  resources :users

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
end
