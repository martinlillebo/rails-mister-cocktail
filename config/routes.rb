Rails.application.routes.draw do

  root to: "cocktails#index"
  get "/cocktails", to: "cocktails#index" # La inn denne for å hindre "No route matches [GET] "/cocktails"

  resources :cocktails, only: [:show, :new, :create]   
  resources :doses, only: [:new, :create, :destroy]
end


# index, new, create, show, edit, update, delete