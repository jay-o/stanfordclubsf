class MessageMailer < ActionMailer::Base
  default from: "Stanford Club SF <contact@stanfordclubsf.org>"
  default to: ENV['ADMIN_EMAIL_ADDRESS']

  def contact_us(message)
    @message = message
    mail  to: ENV['ADMIN_EMAIL_ADDRESS'],
          cc: @message.email,
          reply_to: @message.email,
          subject: "SCSF Contact us from #{@message.email}"
  end
end
