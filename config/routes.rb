Rails.application.routes.draw do
  resources :cards
  resources :card_drawings
  resources :readings
  resources :friends
  resources :public_profiles
  resources :personal_profiles
  resources :users
  
    #Sign up / User authorization routing
    post "/signup", to: "users#create"
    get "/me", to: "users#show" 

    #Log in / Log out routing and session control
    post "/login", to: "sessions#create"
    delete "/logout", to: "sessions#destroy"

end
