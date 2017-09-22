Rails.application.routes.draw do
  get 'welcome/show'

  root 'welcome#show'
  resources :property_staffs
  resources :customer_staffs
  resources :appointment_staffs
  resources :properties
  resources :appointments
  resources :staffs
  resources :customers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end