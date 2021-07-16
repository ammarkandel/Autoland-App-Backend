Rails.application.routes.draw do
  resources :appointments, only: [:create]
  resources :cars, only: [:index]

  get '/user_appointments', to: 'appointments#index'
  scope '/auth' do
    post '/signin', to: 'user_token#create'
    post '/signup', to: 'users#create'
  end
end
