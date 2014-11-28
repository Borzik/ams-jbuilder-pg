json.array!(@posts) do |post|
  json.extract! post, :id, :title, :description, :author_name, :author_email
  json.url post_url(post, format: :json)
end
