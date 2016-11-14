require 'test_helper'

class WeatherUpdatesControllerTest < ActionController::TestCase
  setup do
    @weather_update = weather_updates(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:weather_updates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create weather_update" do
    assert_difference('WeatherUpdate.count') do
      post :create, weather_update: { date: @weather_update.date, time1: @weather_update.time1, time2: @weather_update.time2, zip: @weather_update.zip }
    end

    assert_redirected_to weather_update_path(assigns(:weather_update))
  end

  test "should show weather_update" do
    get :show, id: @weather_update
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @weather_update
    assert_response :success
  end

  test "should update weather_update" do
    patch :update, id: @weather_update, weather_update: { date: @weather_update.date, time1: @weather_update.time1, time2: @weather_update.time2, zip: @weather_update.zip }
    assert_redirected_to weather_update_path(assigns(:weather_update))
  end

  test "should destroy weather_update" do
    assert_difference('WeatherUpdate.count', -1) do
      delete :destroy, id: @weather_update
    end

    assert_redirected_to weather_updates_path
  end
end
