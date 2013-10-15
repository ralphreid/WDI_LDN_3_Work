class Book < ActiveRecord::Base
  attr_accessible :title, :content, :author

  scope :published, -> { where(published: true) }
  scope :unpublished, -> { where(published: false) }
  scope :by_author, ->(author) { where(author: author) }

  before_save do
    puts "This record will be saved soon"
    self.author = "no author" if self.author.nil?
  end

  after_save do
    puts "you've just saved the record"
  end

  after_create do
    puts "record has been created"
  end

  after_initialize do
    puts "you just initialized"
  end

  before_destroy do
    puts "will will destroy a book"
  end

end

