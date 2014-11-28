class CommentSerializer < ActiveModel::Serializer
  attributes :name, :body
  belongs_to :post
end
