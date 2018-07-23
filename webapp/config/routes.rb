Rails.application.routes.draw do
  resources :setting_values
  resources :residence_allowances
  resources :family_allowances
  resources :tasks
  resources :age_groups
  resources :adjustment_values
  resources :position_grades
  resources :admins
  resources :user_yongs
  resources :user_s
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
