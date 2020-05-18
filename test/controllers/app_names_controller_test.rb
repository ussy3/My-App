require 'test_helper'

class AppNamesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @app_name = app_names(:one)
  end

  test "should get index" do
    get app_names_url
    assert_response :success
  end

  test "should get new" do
    get new_app_name_url
    assert_response :success
  end

  test "should create app_name" do
    assert_difference('AppName.count') do
      post app_names_url, params: { app_name: { message: @app_name.message, title: @app_name.title } }
    end

    assert_redirected_to app_name_url(AppName.last)
  end

  test "should show app_name" do
    get app_name_url(@app_name)
    assert_response :success
  end

  test "should get edit" do
    get edit_app_name_url(@app_name)
    assert_response :success
  end

  test "should update app_name" do
    patch app_name_url(@app_name), params: { app_name: { message: @app_name.message, title: @app_name.title } }
    assert_redirected_to app_name_url(@app_name)
  end

  test "should destroy app_name" do
    assert_difference('AppName.count', -1) do
      delete app_name_url(@app_name)
    end

    assert_redirected_to app_names_url
  end
end
