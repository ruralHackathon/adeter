Rails.application.routes.draw do

  devise_for :users
  root 'promos#index'
  resources :promos
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
