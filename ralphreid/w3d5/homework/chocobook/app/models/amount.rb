class Amount < ActiveRecord::Base
  attr_accessible :metric, :measure, :quantity, :ingredient_id
  belongs_to :ingredient
end
