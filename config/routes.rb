Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :tasks
  post '/trackers', to: 'trackers#create'
  get '/trackers', to: 'trackers#index'

  post '/users', to: 'users#create'
  get '/users', to: 'users#show'

  patch '/notes', to: 'notes#update'

  patch '/tasks', to: 'tasks#update_all'
  post '/auth', to: 'auth#create'
  get '/current_user', to: 'auth#show'
end
