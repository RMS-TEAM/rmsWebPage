Rms::Application.routes.draw do

  get "comentarios/index"

  get "comentarios/show"

  get "comentarios/new"

  get "comentarios/create"

  get "comentarios/update"

  get "comentarios/destroy"

  get "comentarios/delete"

   resources :users
   root :to => 'users#index'
end
