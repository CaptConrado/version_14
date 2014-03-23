json.array!(@reports) do |report|
  json.extract! report, :month
  json.url report_url(report, format: :json)
end