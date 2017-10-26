require 'test_helper'

class ScheTsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sche_t = sche_ts(:one)
  end

  test "should get index" do
    get sche_ts_url
    assert_response :success
  end

  test "should get new" do
    get new_sche_t_url
    assert_response :success
  end

  test "should create sche_t" do
    assert_difference('ScheT.count') do
      post sche_ts_url, params: { sche_t: { name_sche: @sche_t.name_sche, sche_id: @sche_t.sche_id, schedule_at: @sche_t.schedule_at } }
    end

    assert_redirected_to sche_t_url(ScheT.last)
  end

  test "should show sche_t" do
    get sche_t_url(@sche_t)
    assert_response :success
  end

  test "should get edit" do
    get edit_sche_t_url(@sche_t)
    assert_response :success
  end

  test "should update sche_t" do
    patch sche_t_url(@sche_t), params: { sche_t: { name_sche: @sche_t.name_sche, sche_id: @sche_t.sche_id, schedule_at: @sche_t.schedule_at } }
    assert_redirected_to sche_t_url(@sche_t)
  end

  test "should destroy sche_t" do
    assert_difference('ScheT.count', -1) do
      delete sche_t_url(@sche_t)
    end

    assert_redirected_to sche_ts_url
  end
end
