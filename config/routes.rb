Rails.application.routes.draw do
  # resources :passwords
  resources :users, only: [:create]

  #user login
  post "/login", to: "sessions#create"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
