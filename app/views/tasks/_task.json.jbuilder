json.extract! task, :id, :name, :price, :created_at, :updated_at
json.url task_url(task, format: :json)
