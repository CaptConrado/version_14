json.array!(@videos) do |video|
  json.extract! video, :title, :ytube_id, :views, :revenue, :report
  json.url video_url(video, format: :json)
end