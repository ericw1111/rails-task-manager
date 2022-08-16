Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Create
  get '/tasks/new', to: 'tasks#new', as: :new
  post '/tasks', to: 'tasks#create'

  # Read
  get '/tasks', to: 'tasks#index'
  get '/tasks/:id', to: 'tasks#show', as: :task

  # Update
  get '/tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  patch '/tasks/:id', to: 'tasks#update'

  # Delete
  delete '/tasks/:id', to: 'tasks#destroy', as: :delete_task

  # Defines the root path route ("/")
  # root "articles#index"
end
