class User < ActiveRecord::Base
  attr_accessor :remember_token

  has_secure_password

  validates :name, presence: true
  validates :email, presence: true
  validates :password, presence: true, length: { minimum: 6 }
end