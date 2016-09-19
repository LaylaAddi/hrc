Rails.application.routes.draw do
  
  
  resources :shippers
  root to: 'shippers#index'
end
