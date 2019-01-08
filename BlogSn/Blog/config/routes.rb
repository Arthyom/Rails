Rails.application.routes.draw do

  root :to => 'publicaciones#index', :as => :index

  get 'publicaciones/index'

  get 'publicaciones/new'

  get 'publicaciones/edit'

  get 'publicaciones/show'
  
  resources :publicaciones

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
