json.extract! mini_post, :id, :content, :likes, :created_at, :updated_at
json.url mini_post_url(mini_post, format: :json)
