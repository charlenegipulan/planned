Rails.application.routes.draw do

    root 'pages#index'

    resources :users, only: [:new, :create]
    resources :sessions, only: [:new, :create, :destroy]
    resources :entries
    get '/login', to: 'sessions#new' #logging in
    get '/logout', to: 'sessions#destroy' #logging out
    
end
