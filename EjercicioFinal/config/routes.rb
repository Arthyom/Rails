Rails.application.routes.draw do

  get 'usuarios/administrador'

  root :to => 'navigations#index'

  get 'navigations/index', :as => :index
  
  post 'navigations/index' => 'navigations#agregarAcarro', :as => :addCar

  get 'navigations/quienes',:as => :quienes

  get 'navigations/contacto', :as => :contacto

  get 'navigations/carro', :as => :carro
  post 'navigations/carro' => 'navigations#vaciarCarrito', :as => :vaciarCarro

  resources :usuarios
  resources :navigations
  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
