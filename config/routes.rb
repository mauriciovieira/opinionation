Rails.application.routes.draw do
  resources :thoughts
  devise_for :users

  root to: 'thoughts#index'
  post '/thought/:thougth_id/observation/', to: 'observations#create', as: 'create_observation'
end
