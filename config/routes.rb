Rails.application.routes.draw do
  resources :users, only: [:show, :create]
  resources :appointments, only: [:index, :create]
  resources :cars, only: [:index]

  scope '/auth' do
    post '/signin', to: 'user_token#create'
    post '/signup', to: 'users#create'
  end
end
