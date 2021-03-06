class User < ActiveRecord::Base
  attr_accessible :email, :name, :password, :password_confirmation, :role

  has_secure_password

  belongs_to :role, :class_name => "Role", :foreign_key => "role_id"
  validates :name, presence: true, uniqueness: true ,length: { maximum: 50 }
  validates :password, presence: true, length: { minimum: 6 }
  validates :password_confirmation, presence: true

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }

  before_save { |user| user.email = email.downcase }
  before_save :create_remember_token
  #def role
  #  Role.find(self.role_id)
  #end  

  private
    def create_remember_token
      self.remember_token = SecureRandom.urlsafe_base64
    end

end
