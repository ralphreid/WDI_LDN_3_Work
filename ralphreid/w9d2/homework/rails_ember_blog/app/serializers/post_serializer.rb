class PostSerializer < ActiveModel::Serializer
  attributes :id, :url, :title, :body, :date

  embed :ids, include: true
  has_one :user, key: :author_id

  def url
    post_url object
  end

  def body
    object.content
  end

  def date
    object.created_at.getutc.iso8601
  end

  def can_update
  end

  def can_destroy
  end

end
