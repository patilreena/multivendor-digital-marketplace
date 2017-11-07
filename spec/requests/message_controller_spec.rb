require 'rails_helper'

RSpec.describe MessagesController, type: :request do

	# it "GET new" do
	#   get new_message_url

	#   assert_response :success

	#   # assert_select 'form' do 
	#   #   assert_select 'input[type=text]'
	#   #   assert_select 'input[type=email]' 
	#   #   assert_select 'textarea'
	#   #   assert_select 'input[type=submit]'
	#   # end
 #  end

 #  it "POST create" do
 #    post create_message_url, params: {
 #      message: {
 #        name: 'cornholio',
 #        email: 'cornholio@example.org',
 #        body: 'hai'
 #      }
 #    }
 #    end
    
 #    assert_redirected_to new_message_url

 #    follow_redirect!

 #    assert_match /Message received, thanks!/, response.body

  it "invalid POST create" do
    post create_message_url, params: {
      message: { name: '', email: '', body: '' }
    }
    # puts "----- #{response.body}"

    # expect version
	expect(response.body).to match(/Name .* blank/)
	expect(response.body).to match(/Email .* blank/)
	expect(response.body).to match(/Body .* blank/)

	# assert version 
    # assert_match /Name .* blank/, response.body
    # assert_match /Email .* blank/, response.body
    # assert_match /Body .* blank/, response.body
   end
end




