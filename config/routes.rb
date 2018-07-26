Rails.application.routes.draw do
  resources :details_employee_salaries
  resources :personal_informations
  resources :position_grades
  resources :tasks
  resources :member_types
  resources :members
  resources :support_residences
  resources :residences
  resources :age_groups
  resources :adjustment_types
  resources :adjustments
  resources :setting_values
  resources :logins
  resources :departments
  # delete '/tasks/:id', to: 'tasks#destroy'
  get '/admins/index', to: 'admins#index'
  get '/admins/wage', to: 'admins#wage'
  get '/admins/history', to: 'admins#history'
  get '/admins/setting', to: 'admins#setting'

  resources :admins
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
