json.article do
  json.(@article, :id, :featured, :title, :url, :imageUrl, :newsSite, :summary, :publishedAt, :launches, :events)
end