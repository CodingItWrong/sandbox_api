Rails.application.routes.draw do
  root "pages#home"
  devise_for :users, controllers: {registrations: "users/registrations"}

  use_doorkeeper

  jsonapi_resources :dishes
  jsonapi_resources :games
  jsonapi_resources :posts
  jsonapi_resources :restaurants
  jsonapi_resources :systems
  jsonapi_resources :widget_comments
  jsonapi_resources :widgets
end
