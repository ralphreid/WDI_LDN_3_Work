class Recipe < ActiveRecord::Base
  attr_accessible :name, :url, :type, :servings, :source, :author, :rating, :prep_time, :cooking_time, #:recipebook_id
  has_one :instruction
  has_and_belongs_to_many :ingredients
  belongs_to :recipebook
  has_many :images
end
