require 'test_helper'

class HelloPageControllerTest < ActionDispatch::IntegrationTest
  test "should get hello" do
    get hello_page_hello_url
    assert_response :success
  end

end
