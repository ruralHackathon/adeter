Rails.application.routes.draw do

  resources :empresas
  root 'promos#index'
  devise_for :users
  resources :promos
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
