Rails.application.routes.draw do
  root 'links#index'
  resources :links, only: [:index, :create]
  get '/:shortlink' => 'links#short_to_original'
end
