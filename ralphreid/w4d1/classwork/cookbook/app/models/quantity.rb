class Quantity < ActiveRecord::Base
  attr_accessible :ingredient_id, :description, :quantity, :measurement, :price
  belongs_to :recipe
  belongs_to :ingredient

  # validates :ingredient_id, uniqueness: { scope: [:recipe_id] }
  # validates :ingredient_id, presence: true, if: ingredient_exists?
  # validates :recipe_id, presence: true
  # validates :quantity, numericality: {greater_than: 0}
  # validates :price, numericality: {greater_than_or_equal_to: 0, less_than_or_equal_to: 100}

  # validate :my_own_validator

  # def my_own_validator
  #   if Ingredient.count > 0 && self.ingredient_id.present?
  #     errors.add(:ingredient_id, "must have a value")
  #   end
  # end

  # def ingredient_exists?
  #   if Ingredient.count > 0
  # end

end
