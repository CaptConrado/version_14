json.array!(@claims) do |claim|
  json.extract! claim, :title, :claim_id, :ytube_id, :producer
  json.url claim_url(claim, format: :json)
end