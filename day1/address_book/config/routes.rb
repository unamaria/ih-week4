Rails.application.routes.draw do

  resources :contacts, only: [:index, :create, :show, :new, :edit, :update]
  get ('/search') => 'contacts#search'
  get ('/favourites') => 'contacts#index_favourites'
  post ('/contacts/favourite/:id') => 'contacts#favourite'

end
