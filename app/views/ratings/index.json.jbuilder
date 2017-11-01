json.array!(@ratings) do |rating|
  json.extract! rating, :id, :stars, :comment, :is_deleted, :product_id, :user_id
  json.url rating_url(rating, format: :json)
end
