Rails.application.routes.draw do
  root to: 'application#index'
  resources :users
  resources :lists
  get '/trello' => 'trello#index'
  get '/trello/boards' => 'trello#boards'

  get '/sessions/new' => 'sessions#new'
  post '/sessions' => 'sessions#create'
  delete '/sessions' => 'sessions#destroy'
end
