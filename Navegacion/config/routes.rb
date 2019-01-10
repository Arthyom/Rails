Rails.application.routes.draw do
  get 'paices/Index'
  get 'paices/edit'
  get 'paices/argentina', :as => :argentina
  get 'paices/mexico', :as => :mexico
  get 'paices/mexico/:pars' => 'paices#mexico'
  get 'paices/alemania', :as => :alemania
  root :to => 'paices#Index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
 