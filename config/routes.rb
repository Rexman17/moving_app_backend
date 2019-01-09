Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users
      resources :moves
      resources :boxes
      resources :items
    end
  end
end
