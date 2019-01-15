Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
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
