class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new
    if user.signed_in?
      can :manage, :all
    end
  end
end
