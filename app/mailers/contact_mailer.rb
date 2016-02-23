class ContactMailer < ActionMailer::Base
  default from: "noreply@devlabs.ml"

  def send_lead(user_id)
    category 'SendGridRocks'
    @lead = User.find(user_id)
    mail(to: "rstormsf@gmail.com", subject: 'DevLabs Inc New Lead')
  end
end
