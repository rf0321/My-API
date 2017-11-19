Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :description, :only => [:index]
    end
  end
  root 'home#index'
  get  'oauth_app/index'
  get  'oauth_app/show'
  get '/auth/:provider/callback' => 'sessions#create'
  get '/destroy' => 'sessions#destroy'
end
