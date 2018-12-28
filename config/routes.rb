Rails.application.routes.draw do

  root 'promos#index'
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

  resources :puntos
  resources :eventos
  resources :empresas
  resources :promos
  
  devise_for :users

end
