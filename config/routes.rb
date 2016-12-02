Rails.application.routes.draw do
  resources :authors
  resources :categories
  devise_for :users
  root 'home#index'
  resources :sectors
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
