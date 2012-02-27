class Ability
  include CanCan::Ability

  def initialize(user)

    if user && user.admin?
      can :access, :rails_admin       # only allow admin users to access Rails Admin
      can :dashboard                  # allow access to dashboard
      if user.has_role? :superadmin
        can :manage, :all             # allow superadmins to do anything
      elsif user.has_role? :editor
        can :manage, [Role]  # allow managers to do anything to products and users
      elsif user.has_role? :sales
        can :update, Product, :hidden => false  # allow sales to only update visible products
      end
    end
  end
end
