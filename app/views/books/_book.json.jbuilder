json.extract! book, :id, :name, :stock, :author_id, :category_id, :created_at, :updated_at
json.url book_url(book, format: :json)
