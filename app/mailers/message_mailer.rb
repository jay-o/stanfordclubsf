class MessageMailer < ActionMailer::Base
  default from: "Stanford Club SF <contact@stanfordclubsf.org>"
  default to: ENV['ADMIN_EMAIL_ADDRESS']

  def contact_us(message)
    @message = message
    mail  to: @message.email,
          bcc: ENV['ADMIN_EMAIL_ADDRESS'],
          reply_to: @message.email,
          subject: "Thanks for contacting the SCSF."
  end
end
