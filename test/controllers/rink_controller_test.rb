require 'test_helper'

class RinkControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get rink_index_url
    assert_response :success
  end

end
