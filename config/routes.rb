Rails.application.routes.draw do
  resources :locate_users
  resources :locators
  resources :friend_requests
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  post '/user_login', to: 'users#login'
  get '/user_persist', to: 'users#persist'
end
