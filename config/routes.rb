Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  resources :cars, only: [:index, :show] do
    resources :reviews, only: [:create]
      resources :favourites, only: [:new, :create]
  end

  resources :favourites, only: [:index, :destroy]
  resources :reviews, only: [:destroy]
  resources :pages , only: [:index]

  # Defines the root path route ("/")
  root "pages#index"
end
