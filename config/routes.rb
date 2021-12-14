Rails.application.routes.draw do
 # get 'likes/create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users
  resources :posts do
    resources :comments, :likes 
  end

  get '/login', to: 'sessions#login'
  post '/login', to: 'sessions#create'
  post '/logout', to: 'sessions#delete'
  delete '/logout', to: 'sessions#delete'
  get '/logout', to: 'sessions#delete'
  get '/users/:id', to: 'users#show'
end
