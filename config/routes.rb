Rails.application.routes.draw do
  resources :users
  #resources :rides, only: [:index, :show]
  resources :attractions, except: [:destroy]
  root "sessions#index"
end
