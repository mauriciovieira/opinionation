Rails.application.routes.draw do
  resources :thoughts
  devise_for :users

  root to: "thoughts#index"
  post "/thought/:thougth_id/observation/", to: "observations#create", as: "create_observation"

  get "/emotion/:emotionable_type/:emotionable_id/:emoji", to: "emotions#emote", as: "emote"
  get "/emotion-delete/:emotionable_type/:emotionable_id", to: "emotions#remove_emotion", as: "remove_emotion"
end
