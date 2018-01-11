require 'test_helper'

class SyojisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @syoji = syojis(:one)
  end

  test "should get index" do
    get syojis_url
    assert_response :success
  end

  test "should get new" do
    get new_syoji_url
    assert_response :success
  end

  test "should create syoji" do
    assert_difference('Syoji.count') do
      post syojis_url, params: { syoji: { artist: @syoji.artist, category: @syoji.category, color_id: @syoji.color_id, image_binary: @syoji.image_binary, image_syo: @syoji.image_syo, image_type: @syoji.image_type, mail_syo: @syoji.mail_syo, memo_syo: @syoji.memo_syo, notification_syo: @syoji.notification_syo, notification_time: @syoji.notification_time, release: @syoji.release, snooze: @syoji.snooze, title_j: @syoji.title_j, title_syo: @syoji.title_syo, url_syo: @syoji.url_syo } }
    end

    assert_redirected_to syoji_url(Syoji.last)
  end

  test "should show syoji" do
    get syoji_url(@syoji)
    assert_response :success
  end

  test "should get edit" do
    get edit_syoji_url(@syoji)
    assert_response :success
  end

  test "should update syoji" do
    patch syoji_url(@syoji), params: { syoji: { artist: @syoji.artist, category: @syoji.category, color_id: @syoji.color_id, image_binary: @syoji.image_binary, image_syo: @syoji.image_syo, image_type: @syoji.image_type, mail_syo: @syoji.mail_syo, memo_syo: @syoji.memo_syo, notification_syo: @syoji.notification_syo, notification_time: @syoji.notification_time, release: @syoji.release, snooze: @syoji.snooze, title_j: @syoji.title_j, title_syo: @syoji.title_syo, url_syo: @syoji.url_syo } }
    assert_redirected_to syoji_url(@syoji)
  end

  test "should destroy syoji" do
    assert_difference('Syoji.count', -1) do
      delete syoji_url(@syoji)
    end

    assert_redirected_to syojis_url
  end
end
