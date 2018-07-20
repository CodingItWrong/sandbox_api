Rails.application.routes.draw do
  root 'pages#home'
  jsonapi_resources :posts
  use_doorkeeper
  devise_for :users
end
