Rails.application.routes.draw do
  # prefix only refers to the path, not the http verb

  # Read all
  get '/restaurants', to: 'restaurants#index', as: :restaurants

  # Create -> 2 steps: form -> creation action
  # We need a page for the form
  get '/restaurants/new', to: 'restaurants#new', as: :new_restaurant
  # creation action
  post '/restaurants', to: 'restaurants#create' #  already have a /restaurants prefix

  # Read one
  get '/restaurants/:id', to: 'restaurants#show', as: :restaurant

  # Update
  get '/restaurants/:id/edit', to: 'restaurants#edit'
  patch '/restaurants/:id', to: 'restaurants#update'
  # Delete
  delete '/restaurants/:id', to: 'restaurants#destroy'


  # resources :restaurants
end
