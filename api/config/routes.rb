Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users do
        collection do
          get :me
        end
      end
      resources :session_users
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
