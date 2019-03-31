Rails.application.routes.draw do
  root 'pages#home'
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }

  use_doorkeeper

  jsonapi_resources :dishes
  jsonapi_resources :posts
  jsonapi_resources :restaurants
  jsonapi_resources :widgets
end
