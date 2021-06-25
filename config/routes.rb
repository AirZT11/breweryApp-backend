Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do
      resources :users
      resources :ratings

      post '/login', to: 'authentication#login'
      get '/current_user', to: 'users#current_user'
      
    end
  end
end
