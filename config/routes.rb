Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :notes
  resources :tasks
  resources :trackers

  post '/users', to: 'users#create'
  get '/users', to: 'users#show'

  patch '/tasks', to: 'tasks#update_all'
  post '/auth', to: 'auth#create'
end
