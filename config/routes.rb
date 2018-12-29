Rails.application.routes.draw do

  namespace :admin do
    root 'application#index'
    get 'application/index'

    resources :users, only: [:index]
    resources :eventos, only: [:index]
    resources :promos, only: [:index]
    resources :empresas, only: [:index]
  end

  root 'info#index'
  get 'info/index'
  get 'info/mercadillo'
  get 'info/historia'
  get 'info/turismoactivo'
  get 'info/turismo'
  get 'info/alojamiento'
  get 'info/gastronomia'
  get 'info/naturaleza'
  get 'info/ocio'
  get 'info/mapa'
  get '/mispromos', to: 'promos#mispromos'

  resources :puntos
  resources :eventos
  resources :empresas
  resources :promos

  devise_for :users

end
