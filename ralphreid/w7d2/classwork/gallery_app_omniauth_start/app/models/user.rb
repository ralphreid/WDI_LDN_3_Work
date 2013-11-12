class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :lockable
  devise  :database_authenticatable,
          :registerable,
          :recoverable,
          :rememberable,
          :trackable,
          :validatable,
          :confirmable,
          :timeoutable,
          :omniauthable,
          :confirm_within => 10.minutes, :omniauth_providers => [:google_oauth2]

  # devise param1, param2, key1 => value1, key2 => value2

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  # attr_accessible :title, :body

  def self.from_omniauth(auth)
    # binding.pry #see whats in side
    if user = User.find_by_email(auth.info.email)  # auth[:info][:email] because hashymash is used
      user.provider = auth.provider
      user.uid = auth.uid
      user
    else
      where(auth.slice(:provider, :uid)).first_or_create do |user|
        user.provider = auth.provider
        user.uid = auth.uid
        user.email = auth.info.email
        user.password = Devise.friendly_token[0,20]
        user.skip_confirmation! # dont' require email confirmation
        user
      end
    end
  end
end
