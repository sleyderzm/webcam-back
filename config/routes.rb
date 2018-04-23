Rails.application.routes.draw do


  post '/login', to: 'application#login'

  resources :loan_payments
  resources :loans
  resources :platform_gains
  resources :deductions
  resources :admin_deductions
  resources :applied_sanctions
  resources :details
  resources :paysheets
  resources :head_quartes
  resources :nicknames
  resources :platforms
  resources :default_platforms
  resources :models
  resources :sanctions
  resources :users
  resources :companies
  resources :roles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
