class Post
  include MongoMapper::Document

  key :title, String
  key :content, String
  key :view_count, Integer

  timestamps!

  belongs_to :user
  has_many  :comments

  def self.flagged
    where(flagged: true)
  end

end
