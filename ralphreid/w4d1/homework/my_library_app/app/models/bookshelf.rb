class Bookshelf < ActiveRecord::Base
  attr_accessible :category, :library_id
  belongs_to :library
  has_many :books
end

