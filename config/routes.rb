Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root 'user#new'
  # root 'restaurant#index'

  resources :restaurants
  resource  :user
  resources :bookings

end
