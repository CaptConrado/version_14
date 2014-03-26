json.array!(@producers) do |producer|
  json.extract! producer, :name, :email, :address, :phone, :twitter, :collab
  json.url producer_url(producer, format: :json)
end