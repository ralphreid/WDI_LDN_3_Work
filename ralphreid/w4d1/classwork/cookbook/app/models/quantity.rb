class Quantity < ActiveRecord::Base
  attr_accessible :ingredient_id, :description, :quantity, :measurement, :price
  belongs_to :recipe
  belongs_to :ingredient

end
