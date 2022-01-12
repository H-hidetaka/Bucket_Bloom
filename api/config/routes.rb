Rails.application.routes.draw do
  namespace :api do
    get 'users_sessions/index'
    get 'users_sessions/show'
    get 'users_sessions/create'
    get 'users_sessions/update'
    get 'users_sessions/destroy'
  end
  get 'user_sessions/new'
  get 'user_sessions/create'
  get 'user_sessions/destroy'
  root :to => 'users#index'
  resources :users
  resources :user_sessions

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
