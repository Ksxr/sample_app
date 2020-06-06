Rails.application.routes.draw do
  get 'sessions/new'
  root 'static_pages#home'
  # root 'application#hello'


  # get 'static_pages/home'
  # # => 'static_pages#home'
  # # co上の行は情報がまとまっている書き方（らしい
  # get 'static_pages/help'
  # # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  # get 'static_pages/about'
  
  # get 'static_pages/contact'
  get  '/help',    to: 'static_pages#help'
  get  '/about',   to: 'static_pages#about'
  get  '/contact', to: 'static_pages#contact'
  get '/signup',   to: 'users#new'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  resources :users
end
