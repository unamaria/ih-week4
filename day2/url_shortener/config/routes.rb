Rails.application.routes.draw do
  root 'links#index'
  # get '/:shortlink' => 
  resources :links, only: [:index, :create]
end
