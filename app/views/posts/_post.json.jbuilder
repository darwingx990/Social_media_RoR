json.extract! post, :id, :tittle, :content, :status, :user_id, :post_id, :created_at, :updated_at
json.url post_url(post, format: :json)
