# require "rails_helper"

# RSpec.describe MessageMailer, type: :mailer do
#   describe "contact_me" do
#     let(:mail) { MessageMailer.contact_me }

#     it "renders the headers" do
#       expect(mail.subject).to eq("Contact me")
#       expect(mail.to).to eq(["to@example.org"])
#       expect(mail.from).to eq(["from@example.com"])
#     end

#     it "renders the body" do
#       expect(mail.body.encoded).to match("Hi")
#     end
#   end

# end


require 'rails_helper'

class MessageMailerTest < ActionMailer::TestCase

  test "contact_me" do
    message = Message.new name: 'anna',
                          email: 'anna@example.org',
                          body: 'hello, how are you doing?'

    email = MessageMailer.contact_me(message)

    assert_emails 1 do
      email.deliver_now
    end

    assert_equal 'Message from www.murdo.ch', email.subject
    assert_equal ['stephen@example.org'], email.to
    assert_equal ['anna@example.org'], email.from
    assert_match /hello, how are you doing?/, email.body.encoded
  end
end
