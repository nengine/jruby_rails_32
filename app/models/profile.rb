class Profile < ActiveRecord::Base
  belongs_to :user
  validates_presence_of :first_name, :last_name
  has_paper_trail

  def full_name
    first_name + ' ' + last_name
  end
end
