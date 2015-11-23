json.array!(@gcs) do |gc|
  json.extract! gc, :id
  json.url gc_url(gc, format: :json)
end
