require 'test_helper'

class ListGControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get list_g_index_url
    assert_response :success
  end

end
