# class Ability
#   include CanCan::Ability

#   def initialize(user)
#     current_user ||= User.new
#     if current_user.has_role? :admin
#         can :manage, :all  
#     else
#         can :read, :all
#     end
#     # begin current_user.has_role :admin
#     #     can :manage, :all    
#     # rescue
#     #     can :read, :all
#     # end
# end
# end
