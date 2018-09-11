Rails.application.routes.draw do
  devise_for :users
  use_doorkeeper

  jsonapi_resources :posts
  jsonapi_resources :restaurants
end
