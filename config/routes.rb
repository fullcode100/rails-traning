Rails.application.routes.draw do
  resources :reservations
  devise_for :librarians
  resources :clients
  resources :books
  resources :categories
  resources :authors
  root to: "reservations#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
