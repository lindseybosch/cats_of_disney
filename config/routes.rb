Rails.application.routes.draw do
root 'images#index'

resources :users, only: [:index, :new, :create, :show]

resource :session, only: [:new, :create, :destroy]

resources :images, only: [:index]

get '/login', to: 'session#new'
end
