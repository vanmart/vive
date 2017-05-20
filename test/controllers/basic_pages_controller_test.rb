require 'test_helper'

class BasicPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get welcome" do
    get basic_pages_welcome_url
    assert_response :success
  end

end
