class Recipe < ActiveRecord::Base
  attr_accessible :name, :url, :type, :servings, :source, :author, :rating, :prep_time, :cooking_time, :instructions#:recipebook_id
  has_and_belongs_to_many :ingredients
end
