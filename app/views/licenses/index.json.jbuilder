json.array!(@licenses) do |license|
  json.extract! license, :id, :name, :description, :url
  json.url license_url(license, format: :json)
end
