Rails.application.routes.draw do
  get 'cocktails/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "cocktails", to: "cocktails#index"
end


# index, new, create, show, edit, update, delete