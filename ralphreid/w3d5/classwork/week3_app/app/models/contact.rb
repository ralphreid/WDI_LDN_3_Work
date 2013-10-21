class Contact < ActiveRecord::Base
  attr_accessible :name, :phone
  has_and_belongs_to_many :lists
end
