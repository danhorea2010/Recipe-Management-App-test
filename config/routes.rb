Rails.application.routes.draw do
  resources :macros
  resources :macros_controllers
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  namespace :api do
    namespace :v1 do
      resources :recipes, only: [:index]
      resources :ingredients, only: [:index]
      resources :macros, only: [:index]
    end
  end

  root "pages#home"
end
