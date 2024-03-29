Rails.application.routes.draw do
  get 'users/show'
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  resources :users, only: [:show] 

  resources :cars do 
    resources :bookings, only: [:new, :create]
  end

  resources :bookings, only: [:show, :index]
end
