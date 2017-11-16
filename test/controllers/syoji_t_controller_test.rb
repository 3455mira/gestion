require 'test_helper'

class SyojiTControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get syoji_t_index_url
    assert_response :success
  end

end
