Rails.application.routes.draw do
  resources :purchases
  resources :categories
  resources :budgets
  root to: "budgets#index" 
end
