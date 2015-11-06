Rails.application.routes.draw do
root 'images#index'

resources :users, only: [:index, :new, :create, :show]

resource :session, only: [:new, :create, :destroy]

resources :images, only: [:index, :new, :show, :create, :destroy, :update, :edit]

resources :profiles, only: [:index]

resources :upvotes, only: [:update]

get '/upvote/:id', to: 'images#upvote'

get '/login', to: 'session#new'

end
