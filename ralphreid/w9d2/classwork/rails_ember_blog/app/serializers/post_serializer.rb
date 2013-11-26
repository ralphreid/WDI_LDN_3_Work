class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :body, :url, :date
  has_one :user, key: :author_id

  embed :ids, include: true

  def url
    post_url object
  end

  def body
    object.content
  end

  def date
    object.created_at.getutc.iso8601
  end
end
