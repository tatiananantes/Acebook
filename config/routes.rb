Rails.application.routes.draw do
  root "users#new"
  resources :users do
    resources :albums do
      resources :photos
    end
  end

  resources :posts do
    resources :comments, :likes 
  end

 

  resources :photos do
    resources :comments, :likes 
  end

  get '/login', to: 'sessions#login'
  post '/login', to: 'sessions#create'
  post '/logout', to: 'sessions#delete'
  delete '/logout', to: 'sessions#delete'
  get '/logout', to: 'sessions#delete'
  get '/users/:id', to: 'users#show'
end
