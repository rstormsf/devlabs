class User < ActiveRecord::Base
  validates :email, email: true
  validates :name, presence: true
  validates :message, presence: true
end
