json.extract! article, :id, :title, :artist, :created_at, :updated_at
json.url article_url(article, format: :json)
