Rms::Application.routes.draw do

  get "comentarios/index"

  get "comentarios/show"

  get "comentarios/new"

  get "comentarios/create"

  get "comentarios/update"

  get "comentarios/destroy"

  get "comentarios/delete"
  get "users/rderoldan1"
  get "users/jvelezpo"
  get "users/jvidalba1"
   resources :users
   root :to => 'users#index'
end
