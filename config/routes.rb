Rails.application.routes.draw do
  post '/groups/new' => 'groups#create'
  patch '/groups/:id' => 'groups#remove'
  patch '/chore/remove' => 'chores#remove'
  post 'groups' => 'groups#search'
  post '/groups/members' => 'groups#join'
  root :to => 'pages#home'
  get 'chores/assign'
  post 'chores/assign' => 'chores#get_user'
  get 'chores/pick_chore'
  post 'chores/pick_chore' => 'chores#add'
  resources :chores
  resources :users
  get 'groups/members'

  resources :groups

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
end
