Rails.application.routes.draw do
  resources :volunteers
  root 'home#index'
  get "home/about"
  get "home/form"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
