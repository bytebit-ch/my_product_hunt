json.array!(@posts) do |post|
  json.extract! post, :id, :title, :description, :category, :link
  json.url post_url(post, format: :json)
end
