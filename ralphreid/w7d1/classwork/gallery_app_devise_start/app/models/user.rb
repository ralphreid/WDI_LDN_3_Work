class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  #  :lockable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable, :timeoutable, :confirm_within => 10.minutes

  # devise param1, param2, param2, key1 => value1, key2 => value2

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  # attr_accessible :title, :body
end
