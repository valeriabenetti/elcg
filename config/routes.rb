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

  get 'pages/landing'

  root 'pages#landing'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
end
