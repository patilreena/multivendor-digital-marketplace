json.array!(@images) do |image|
  json.extract! image, :id, :url, :type, :product_id, :key
  json.url image_url(image, format: :json)
end
