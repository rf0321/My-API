Rails.application.routes.draw do
  use_doorkeeper
  namespace :api do
    namespace :v1 do
      resources :contribution, :only => [:index]
      resources :description, :only => [:index]
    end
  end
  root 'home#index'
  get  'oauth_app/index'
  get  'oauth_app/show'
  get '/auth/:provider/callback' => 'sessions#create'
  get '/destroy' => 'sessions#destroy'
end
