require 'test_helper'

class SyojiTsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @syoji_t = syoji_ts(:one)
  end

  test "should get index" do
    get syoji_ts_url
    assert_response :success
  end

  test "should get new" do
    get new_syoji_t_url
    assert_response :success
  end

  test "should create syoji_t" do
    assert_difference('SyojiT.count') do
      post syoji_ts_url, params: { syoji_t: { artist: @syoji_t.artist, release: @syoji_t.release, title: @syoji_t.title } }
    end

    assert_redirected_to syoji_t_url(SyojiT.last)
  end

  test "should show syoji_t" do
    get syoji_t_url(@syoji_t)
    assert_response :success
  end

  test "should get edit" do
    get edit_syoji_t_url(@syoji_t)
    assert_response :success
  end

  test "should update syoji_t" do
    patch syoji_t_url(@syoji_t), params: { syoji_t: { artist: @syoji_t.artist, release: @syoji_t.release, title: @syoji_t.title } }
    assert_redirected_to syoji_t_url(@syoji_t)
  end

  test "should destroy syoji_t" do
    assert_difference('SyojiT.count', -1) do
      delete syoji_t_url(@syoji_t)
    end

    assert_redirected_to syoji_ts_url
  end
end
