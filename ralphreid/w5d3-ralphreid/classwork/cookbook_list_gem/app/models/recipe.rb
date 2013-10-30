class Recipe < ActiveRecord::Base
  attr_accessible :name, :course, :cooktime, :servingsize, :instructions, :image

  has_many :quantities, order: "position ASC"
  has_many :ingredients, through: :quantities, order: "quantities.position ASC"

  validates :name, presence: true
  validates :cooktime, presence: true

  belongs_to :user

end
