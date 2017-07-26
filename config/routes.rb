Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'restaurant#index'

  resources :restaurants
  resources :users
  resources :bookings



end
