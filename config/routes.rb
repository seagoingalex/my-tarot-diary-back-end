Rails.application.routes.draw do
  resources :cards
  resources :card_drawings
  resources :readings
  resources :friends
  resources :public_profiles
  resources :personal_profiles
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
