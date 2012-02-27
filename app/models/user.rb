class User < ActiveRecord::Base
  after_initialize :create_profile
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :username, :email, :password, :password_confirmation, :remember_me, :profile_attributes
  has_many :user_roles
  has_many :roles, :through => :user_roles
  has_one :profile
  delegate :first_name, :last_name, :full_name, :to => :profile
  accepts_nested_attributes_for :profile


  def admin?
    has_role? :admin
  end


  def has_role?(role_sym)
    roles.any? { |r| r.name.underscore.to_sym == role_sym }
  end

  def create_profile
    self.build_profile if self.profile.nil?
  end



end
