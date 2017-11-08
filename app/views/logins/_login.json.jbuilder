json.extract! login, :id, :account, :password, :created_at, :updated_at
json.url login_url(login, format: :json)
