json.extract! movie, :id, :director, :title, :rating, :created_at, :updated_at
json.url movie_url(movie, format: :json)
