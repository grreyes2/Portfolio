Rails.application.routes.draw do

  get 'contacts/new'
  root 'about#about'

  resources :contact, only: [:create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
