Rails.application.routes.draw do
  # resources :passwords
  resources :users, only: [:create, :show]
  resources :passwords, only: [:show]
  #user login
  post "/login", to: "sessions#create"
  #user logout
  delete "/logout", to: "sessions#destroy"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
