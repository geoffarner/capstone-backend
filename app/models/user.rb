class User < ApplicationRecord
  
  # has_many :jurors
  has_secure_password
  validates :email, presence: true, uniqueness: true
  # validates :name, uniqueness: true, presence: true
  # validates :password, length: { in: 6..20 }
  
end