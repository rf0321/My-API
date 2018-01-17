Rails.application.routes.draw do
  resources :api, :only => [:index,:create, :show]
end
