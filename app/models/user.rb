class User < ActiveRecord::Base
  has_many :posts, dependent: :destroy
  validates :name, presence: true
  validates :email, presence: true
  validates :password, presence: true, confirmation: true
  validates :password_confirmation, presence: true
  has_secure_password
end
