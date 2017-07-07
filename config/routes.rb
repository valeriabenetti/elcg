Rails.application.routes.draw do
  mount Shrine::DownloadEndpoint => "/attachments"

  # For Users
  resources :users, only: [:create, :update] do
    collection do
      get 'user' => 'users#show'
      post 'email_update'

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

  post 'password/forgot' => 'password#forgot'
  post 'password/reset' => 'password#reset'
  put 'password/update' => 'password#update'
end
