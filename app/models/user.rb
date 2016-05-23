class User < ActiveRecord::Base
  validates :email, email: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :loan_amount, presence: true
  validates :state, presence: true

  after_create :send_email

  def send_email
    ContactMailer.send_lead(self).deliver
  end

end
