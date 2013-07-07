class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new                   # guest user (not logged in)
    if user.admin?                      # if admin, can do everything
      can :manage, :all
      can :admin, :staticpage
    elsif user.id != nil                # if signed in user, can access: /change this to boolean active in user model
      can :admin, :staticpage           # can view the admin dashboard
      can :read, User                   # can view users
      can :manage, Event                # can manage events
      cannot :destroy, Event            # - but can't delete them
      can :update, User do |user_page|  # can update your own record
        user_page == user               
      end
    else
      can :read, Event
    end

    # Define abilities for the passed in user here. For example:
    #
    #   user ||= User.new # guest user (not logged in)
    #   if user.admin?
    #     can :manage, :all
    #   else
    #     can :read, :all
    #   end
    #
    # The first argument to `can` is the action you are giving the user 
    # permission to do.
    # If you pass :manage it will apply to every action. Other common actions
    # here are :read, :create, :update and :destroy.
    #
    # The second argument is the resource the user can perform the action on. 
    # If you pass :all it will apply to every resource. Otherwise pass a Ruby
    # class of the resource.
    #
    # The third argument is an optional hash of conditions to further filter the
    # objects.
    # For example, here the user can only update published articles.
    #
    #   can :update, Article, :published => true
    #
    # See the wiki for details:
    # https://github.com/ryanb/cancan/wiki/Defining-Abilities
  end
end
