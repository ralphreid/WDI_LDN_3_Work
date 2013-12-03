class Comment

  include MongoMapper::EmbeddedDocument


  key :content, String
  belongs_to :user

  timestamps!

  
end