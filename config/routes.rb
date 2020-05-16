Rails.application.routes.draw do
  get 'static_pages/home'
  # => 'static_pages#home'
  # co上の行は情報がまとまっている書き方（らしい
  get 'static_pages/help'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'application#hello'
end
