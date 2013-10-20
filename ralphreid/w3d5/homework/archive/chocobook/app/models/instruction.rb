class Instruction < ActiveRecord::Base
  attr_accessible :metric, :measure, :quantity, #:recipe_id
  belongs_to :recipe
end
