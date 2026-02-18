json.extract! micrpost, :id, :content, :user_id, :created_at, :updated_at
json.url micrpost_url(micrpost, format: :json)
