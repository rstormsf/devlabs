class ContactMailer < ActionMailer::Base
  default from: "noreply@devlabs.ml"

  def send_lead(lead)
    @lead = lead
    mail(to: "rstormsf@gmail.com", subject: 'DevLabs Inc New Lead')
  end
end
