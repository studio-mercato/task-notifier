Rails.application.routes.draw do
  resources :users
  resources :lists
  root to: 'application#index'
  get '/trello' => 'trello#index'
  get '/trello/boards' => 'trello#boards'
end
