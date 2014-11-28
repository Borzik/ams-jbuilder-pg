json.array!(@posts) do |post|
  json.extract! post, :title, :text, :author_name
end
