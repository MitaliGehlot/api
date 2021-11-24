Rails.application.routes.draw do
  get 'info/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
   get "/information", to: "information#index"
     resources :information
   get "/information", to: "information#show"
   get "users/index"

  resources :users, param: :_username
  post '/auth/login', to: 'authentication#login'
  get '/*a', to: 'application#not_found'
end