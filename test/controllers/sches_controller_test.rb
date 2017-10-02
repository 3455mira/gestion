require 'test_helper'

class SchesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sch = sches(:one)
  end

  test "should get index" do
    get sches_url
    assert_response :success
  end

  test "should get new" do
    get new_sch_url
    assert_response :success
  end

  test "should create sch" do
    assert_difference('Sche.count') do
      post sches_url, params: { sch: { icon_id: @sch.icon_id, mail_sche: @sch.mail_sche, memo_sche: @sch.memo_sche, name_sche: @sch.name_sche, notification_time: @sch.notification_time, place: @sch.place, schedule_at: @sch.schedule_at, snooze: @sch.snooze } }
    end

    assert_redirected_to sch_url(Sche.last)
  end

  test "should show sch" do
    get sch_url(@sch)
    assert_response :success
  end

  test "should get edit" do
    get edit_sch_url(@sch)
    assert_response :success
  end

  test "should update sch" do
    patch sch_url(@sch), params: { sch: { icon_id: @sch.icon_id, mail_sche: @sch.mail_sche, memo_sche: @sch.memo_sche, name_sche: @sch.name_sche, notification_time: @sch.notification_time, place: @sch.place, schedule_at: @sch.schedule_at, snooze: @sch.snooze } }
    assert_redirected_to sch_url(@sch)
  end

  test "should destroy sch" do
    assert_difference('Sche.count', -1) do
      delete sch_url(@sch)
    end

    assert_redirected_to sches_url
  end
end
