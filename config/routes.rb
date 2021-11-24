Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do
      resources :users
      resources :ratings
      resources :breweries

      post '/login', to: 'authentication#login'
      get '/profile', to: 'users#profile'
      get '/brewery_ratings', to: 'ratings#brewery_ratings'
      get '/user_ratings', to: 'ratings#user_ratings'
      # get '/average_rating', to: 'ratings'

      # get '/search', to: 'breweries#search_breweries'
      
    end
  end
end
