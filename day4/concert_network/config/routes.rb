Rails.application.routes.draw do
  root 'concerts#index'

  resources :concerts, only: [:index, :new, :create, :show]
end
