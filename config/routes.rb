Rails.application.routes.draw do
  # resources :passwords
  resources :passwords, only: [:show, :update, :destroy, :create]
  resources :users do 
    resources :passwords, only: [:index, :show]
  end


  #add new password
  get '/passwords', to: 'passwords#create'
  #user signup
  post '/signup', to: 'users#create'
  #user login
  post "/login", to: "sessions#create"
  #user logout
  delete "/logout", to: "sessions#destroy"
  #keep user logged in 
  get "/me", to: "users#show"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
