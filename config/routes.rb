Rails.application.routes.draw do
  roots "welcome#index"
  resources :incomes
  resources :spends
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
