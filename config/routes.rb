Rails.application.routes.draw do
  root :to => 'pages#home'
  get 'chores/assign'
  post 'chores/assign' => 'chores#get_user'
  get 'chores/pick_chore'
  post 'chores/pick_chore' => 'chores#add'
  resources :chores
  resources :users
  resources :groups

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
end
