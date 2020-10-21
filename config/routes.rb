Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "static#home"
  get "/signup" => "users#new"
  get "/login" => "sessions#new"
  delete "/session" => "sessions#destroy"
  resources :users
  resources :sessions, only: [:create]
end
