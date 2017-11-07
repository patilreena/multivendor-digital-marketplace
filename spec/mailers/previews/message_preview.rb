# Preview all emails at http://localhost:3000/rails/mailers/message
# class MessagePreview < ActionMailer::Preview

#   # Preview this email at http://localhost:3000/rails/mailers/message/contact_me
#   def contact_me
#     MessageMailer.contact_me
#   end

# end


class MessageMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/message_mailer/contact_me
  def contact_me 
    message = Message.new name: 'reena', 
                          email: 'reenavg33@gmail.com',
                          body: 'This is the body of the email'

    MessageMailer.contact_me message
  end

end
