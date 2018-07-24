json.extract! user_, :id, :name, :age, :created_at, :updated_at
json.url user__url(user_, format: :json)
