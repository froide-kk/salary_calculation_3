Rails.application.routes.draw do
  delete '/tasks/:id', to: 'tasks#destroy'
  resources :tasks
  resources :admins
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
