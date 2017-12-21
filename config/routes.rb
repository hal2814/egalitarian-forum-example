Rails.application.routes.draw do
  root to: "posts#index"

  get '/sign_up' => 'users#new'
  post '/users' => 'users#create'

  get '/sign_in' => 'sessions#new'
  post '/sign_in' => 'sessions#create'
  get 'sign_out' => 'sessions#destroy'


  resources :posts do
    resources :comments
  end
end
