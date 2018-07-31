json.extract! login, :id, :user_id, :user_pw, :created_at, :updated_at
json.url login_url(login, format: :json)
