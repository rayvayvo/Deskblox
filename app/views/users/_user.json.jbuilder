json.extract! user, :id, :email, :password, :theme_id, :created_at, :updated_at
json.url user_url(user, format: :json)
