Rails.application.routes.draw do
  get 'welcome/index'

  get '/app/views/about' => 'about#about'

  root 'welcome#index'

  # root 'about#about'




  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
