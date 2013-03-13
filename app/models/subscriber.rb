class Subscriber < ActiveRecord::Base
  has_secure_password
  attr_accessible :username, :email, :password, :password_confirmation
end
