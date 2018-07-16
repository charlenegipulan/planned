Rails.application.routes.draw do

    root 'pages#index'

    resources :users, only: [:new, :create]
    resources :sessions, only: [:new, :create, :destroy]
    get '/login', to: 'sessions#new' #logging in
    get '/logout', to: 'sessions#destroy' #logging out

    get '/entries', to: 'entries#index'


end
