class User < ActiveRecord::Base

  has_secure_password
  attr_accessible :email, :name, :role, :password, :password_confirmation
  validates :name, presence: true
  validates :email, presence: true, uniqueness: true

  has_many :recipes

  def role?(r)
    self.role == r.to_s
  end

end