Rails.application.routes.draw do
  # For Users
  resources :tests do
    collection do
      get :starts_with_search
    end
  end

  namespace :admin do
    resources :tests do
      collection do
        post :import
      end
    end
  end

  root 'tests#index'
  
  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
end
