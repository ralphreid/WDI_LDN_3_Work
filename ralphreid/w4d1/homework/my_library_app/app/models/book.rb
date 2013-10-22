  class Book < ActiveRecord::Base
  attr_accessible :title, :author, :pages, :year, :bookshelf_id
  belongs_to :bookshelf
  has_one :library, through: :bookshelf

  validates :title, presence: true
end


