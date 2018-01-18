require 'test_helper'

class SerachControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get serach_index_url
    assert_response :success
  end

  test "should get search" do
    get serach_search_url
    assert_response :success
  end

end
