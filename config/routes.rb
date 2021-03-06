Rails.application.routes.draw do
  devise_for :sign_ups
  resources :orders
  resources :clients
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :volunteers
  root 'home#index'
  get "home/about"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
