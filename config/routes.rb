SampleApp2::Application.routes.draw do
  
  resources :users
  root to: 'static_pages#home'
  match '/signup',  to: 'users#new'

  get "static_pages/home"
  get "static_pages/help"
  get "static_pages/about"


  match '/help',    to: 'static_pages#help'
  match '/about',   to: 'static_pages#about'
  match '/contact', to: 'static_pages#contact'

end