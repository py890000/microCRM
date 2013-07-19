class Dictionary < ActiveRecord::Base
  attr_accessible :code, :description, :group, :name, :ordered
  validates_presence_of :code, :group, :name
  validates_numericality_of :ordered

end
