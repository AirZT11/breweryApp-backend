Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do
      resources :users
      resources :ratings

      post '/login', to: 'authentication#login'
      get '/profile', to: 'users#profile'
      # part of SOLUTION 1 to fetching ratings - get '/brewery_ratings', to: 'ratings#brewery_ratings'
      
    end
  end
end
