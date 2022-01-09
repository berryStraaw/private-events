Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :events, only: [:index, :new, :create, :show]
  resources :users, only: [:show]
  root "events#index"
end
