class PostSerializer < ActiveModel::Serializer
    attributes :title, :text, :author_name
    # has_many :comments
end
