require 'test_helper'

class TutiControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get tuti_index_url
    assert_response :success
  end

end
