Rails.application.routes.draw do

  get 'searches/search'
  get 'search/search'
  get 'homes/about'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :facilities do
    resources :reviews, only: ["new", "create", "update", "destroy"]
  end

  resources :users, only: [ "edit", "update"]
  root to: "homes#about"

  get "search" => "searches#search"
end