json.extract! personal_information, :id, :employee_id, :name, :department_id, :position_grade_id, :task_id, :birth, :age_group_id, :insurance, :residence_id, :join_date, :date, :created_at, :updated_at
json.url personal_information_url(personal_information, format: :json)
