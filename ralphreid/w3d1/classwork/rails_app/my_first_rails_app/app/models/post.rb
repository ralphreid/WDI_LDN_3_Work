class Post < ActiveRecord::Base
  attr_accessible :text, :title

  has_many :comments

  def word_count
    text.split.size
  end

  def comment_count
    comments.count
  end
  
end
