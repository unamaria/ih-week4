Rails.application.routes.draw do
  resources :users, only: [:index, :show, :new, :create, :destroy] do 
  	resources :products, only: [:index, :show, :new, :create, :destroy]
  end
  resources :products, only: [:index, :create, :new, :show] do
	  resources :bids, only: [:create]
  end
end
