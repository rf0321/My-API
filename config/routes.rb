Rails.application.routes.draw do
 # Use API root
  root 'home#index'
  get  'oauth_app/index'
  get  'oauth_app/show'
  get '/auth/:provider/callback' => 'sessions#create'
  get '/destroy' => 'sessions#destroy'
end
