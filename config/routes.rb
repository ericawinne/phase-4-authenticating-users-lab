Rails.application.routes.draw do
  resources :articles, only: [:index, :show]

  get "/me", to: "users#show"

  delete "/logout", to: "sessions#destroy"
  post "/login", to: "sessions#create"
end
