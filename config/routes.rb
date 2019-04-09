Rails.application.routes.draw do
  resources :order_items
  resources :orders
  resources :prices
  resources :items
  resources :customer_locations
  resources :customer_accounts
  resources :customers
  resources :vendor_locations
  resources :vendor_contacts
  resources :vendors
  devise_for :users, defaults: { format: :json }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
