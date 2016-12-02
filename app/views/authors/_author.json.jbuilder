json.extract! author, :id, :name, :category_id, :created_at, :updated_at
json.url author_url(author, format: :json)