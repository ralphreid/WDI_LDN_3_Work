class Image < ActiveRecord::Base
  attr_accessible :url, :target_location  #:recipe_id
  belongs_to :recipe
end
