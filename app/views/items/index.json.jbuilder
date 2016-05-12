json.array!(@items) do |item|
  json.extract! item, :id, :type, :name, :information, :price
  json.url item_url(item, format: :json)
end
