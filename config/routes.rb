Rails.application.routes.draw do
  root to: 'home#index'

  resources :home, only: [:index]
  resources :cocktail_details, only: [:index, :show]
  resources :ingredients, only: [:show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
