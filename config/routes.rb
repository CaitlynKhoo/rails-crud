Rails.application.routes.draw do
  # Read all
  get '/restaurants', to: 'restaurants#index'
  # Create
  get '/restaurants/new', to: 'restaurants#new'
  post '/restaurants', to: 'restaurants#create'
  # Read one
  get '/restaurants/:id', to: 'restaurants#show', as: :restaurant
  # Update
  get '/restaurants/:id/edit', to: 'restaurants#edit'
  patch '/restaurants/:id', to: 'restaurants#update'
  # Delete
  delete '/restaurants/:id', to: 'restaurants#destroy'


  # resources :restaurants
end
