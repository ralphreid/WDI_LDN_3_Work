class Recipebook < ActiveRecord::Base
  attr_accessible :owner, :title
  has_many :recipes
end
