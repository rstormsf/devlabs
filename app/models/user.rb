class User < ActiveRecord::Base
  validates :email, email: true
  validates :name, presence: true
  validates :message, presence: true

  after_create :send_email

  def send_email
    ContactMailer.send_lead(self).deliver
  end
end
