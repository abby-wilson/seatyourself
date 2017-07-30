Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root 'restaurant#homepage'
  # root 'restaurant#index'

  resources :restaurant
  resources :user
  resources :booking

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  get '/logout' => 'session#destroy'

  get '/homepage' => 'restaurant#homepage'
  get '/restaurants' => 'restaurant#index'
  get '/profile' => 'user#show'
  get '/restaurantsignup' => 'restaurant#new'
  get '/newbooking' => 'booking#new'
end
