json.extract! user, :id, :username, :email, :password, :post_id, :comment_id, :created_at, :updated_at
json.url user_url(user, format: :json)
