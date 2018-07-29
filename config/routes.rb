Rails.application.routes.draw do
  resources :web_settings
  resources :web_histories
  resources :web_wages
  resources :web_personals
  resources :_settings
  resources :_histories
  resources :_wages
  resources :_personals
  resources :detail_employee_salaries
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
  get '/admin', to: 'web_personals#basic_personal_info'
  get '/admin/personal/', to: 'web_personals#basic_personal_info'
  get '/admin/personal/basic_personal_info', to: 'web_personals#basic_personal_info'
  get '/admin/personal/family_info', to: 'web_personals#family_info'
  get '/admin/personal/monthly_rent_support_info', to: 'web_personals#monthly_rent_support_info'

  get '/admin/wage', to: 'web_wages#wage_management'
  get '/admin/wage/wage_management', to: 'web_wages#wage_management'
  get '/admin/wage/age_info', to: 'web_wages#age_info'
  get '/admin/wage/adjustment_values_info', to: 'web_wages#adjustment_values_info'

  get '/admin/history/', to: 'web_histories#annual_monthly_check'
  get '/admin/history/annual_monthly_check', to: 'web_histories#annual_monthly_check'

  get '/admin/setting', to: 'web_settings#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
