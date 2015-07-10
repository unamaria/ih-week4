Rails.application.routes.draw do
  root 'concerts#index'

  resources :concerts, only: [:index, :new, :create, :show] do
  	resources :comments, only: [:create]
  end
end
