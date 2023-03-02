Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :facilities do
    resources :comments, only: ["create", "update", "destroy"]
  end

  root to: "facilities#index"
end