class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :username, :email, :password, :password_confirmation, :remember_me
  has_many :user_roles
  has_many :roles, :through => :user_roles


  def admin?
    has_role? :admin
  end


  def has_role?(role_sym)
    roles.any? { |r| r.name.underscore.to_sym == role_sym }
  end



end
