Rails.application.routes.draw do

  get 'homes/about'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :facilities do
    resources :comments, only: ["new", "create", "update", "destroy"]
  end

  resources :users, only: ["edit", "update"]
  root to: "facilities#index"
end