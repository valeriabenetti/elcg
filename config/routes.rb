Rails.application.routes.draw do
  resources :profiles
  # For Users
  resources :users
  resources :tests do
    member do
      post 'favorite'
      post 'unfavorite'
    end
    collection do
      get :starts_with_search
    end
  end

  root 'tests#index'

  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
end
