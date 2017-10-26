json.extract! user, :id, :name_user, :mail_user, :pass_user, :icon_user, :created_at, :updated_at
json.url user_url(user, format: :json)
