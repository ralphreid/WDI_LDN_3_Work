class Recipe < ActiveRecord::Base
  attr_accessible :name, :url, :type, :servings, :source, :author, :rating, :prep_time, :cooking_time
  
end
