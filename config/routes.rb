Rails.application.routes.draw do
  resources :purchases
  resources :categories
  resources :budgets
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
