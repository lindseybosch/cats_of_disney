Rails.application.routes.draw do
root 'images#index'

resources :users, only: [:index, :new, :create, :show]

resource :session, only: [:new, :create, :destroy]

resources :images, only: [:index, :new, :show, :create, :destroy, :update]

resources :profiles, only: [:index]

get '/upvote/:id', to: 'images#upvote'

get '/login', to: 'session#new'

end
