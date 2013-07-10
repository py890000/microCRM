class Role < ActiveRecord::Base
  attr_accessible :desc, :name, :permission, :state
  has_many :users


  def permissions
    temp = self.permission.split(",") || []
    Permission.find(temp)
  end  

end


