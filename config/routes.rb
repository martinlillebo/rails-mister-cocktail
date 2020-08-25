Rails.application.routes.draw do

  root to: "cocktails#index"
  get 'doses/new'
  get 'doses/create'
  get 'doses/destroy'
  # get 'cocktails/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :cocktails, only: [:show, :new, :create]   
  resources :doses, only: [:new, :create, :destroy]
end


# index, new, create, show, edit, update, delete