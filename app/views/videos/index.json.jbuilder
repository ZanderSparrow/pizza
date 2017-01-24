json.array!(@videos) do |video|
  json.extract! video, :id, :title, :url, :thumbnail, :id, :description, :tags
  json.url video_url(video, format: :json)
end
