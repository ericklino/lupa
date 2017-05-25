class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new
    if user.admin?
      can :access, :rails_admin
<<<<<<< HEAD
      can :manage, :all
=======
      can :manage, :all   
>>>>>>> 06bd80de00265842297bfebf74763c7eea639716
    else
      can :read, :all
    end
  end
end
