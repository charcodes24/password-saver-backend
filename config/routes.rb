Rails.application.routes.draw do
  # resources :passwords
  resources :users, only: [:create]
  resources :sessions, only: [:create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
