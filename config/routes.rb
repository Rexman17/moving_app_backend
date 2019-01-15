Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      post '/login', to: 'auth#create'
      get '/profile', to: 'users#profile'
      resources :users do
        resources :moves do
          get 'items' => 'items#allItemsInAMove'
          resources :boxes do
            resources :items
          end
        end
      end
    end
  end
end
