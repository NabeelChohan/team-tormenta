require 'test_helper'

class SmsNotificationsControllerTest < ActionController::TestCase
  setup do
    @sms_notification = sms_notifications(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sms_notifications)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sms_notification" do
    assert_difference('SmsNotification.count') do
      post :create, sms_notification: { content: @sms_notification.content, day_temp: @sms_notification.day_temp, eve_temp: @sms_notification.eve_temp, precip: @sms_notification.precip, user_ID: @sms_notification.user_ID }
    end

    assert_redirected_to sms_notification_path(assigns(:sms_notification))
  end

  test "should show sms_notification" do
    get :show, id: @sms_notification
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sms_notification
    assert_response :success
  end

  test "should update sms_notification" do
    patch :update, id: @sms_notification, sms_notification: { content: @sms_notification.content, day_temp: @sms_notification.day_temp, eve_temp: @sms_notification.eve_temp, precip: @sms_notification.precip, user_ID: @sms_notification.user_ID }
    assert_redirected_to sms_notification_path(assigns(:sms_notification))
  end

  test "should destroy sms_notification" do
    assert_difference('SmsNotification.count', -1) do
      delete :destroy, id: @sms_notification
    end

    assert_redirected_to sms_notifications_path
  end
end
