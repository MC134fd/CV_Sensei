Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

  # get "cvs/:id", to: "cvs#show", as: :cv
  # get "cvs/new", to: "cvs#new"
  # post "cvs", to: "cvs#create"
  resources :cvs, only: [:index, :new, :create, :show] do
    resources :chats, only: [:show, :create] do
      resources :messages, only: [:create]
    end
  end
end
