Rails.application.routes.draw do
  root 'concerts#index'

  get ("concerts/search") => "concerts#search_by_price"
  get ("concerts/popular") => "concerts#popular"

  resources :concerts, only: [:index, :new, :create, :show] do
  	resources :comments, only: [:create]
  end

end
