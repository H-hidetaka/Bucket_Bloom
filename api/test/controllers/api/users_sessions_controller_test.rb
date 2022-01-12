require "test_helper"

class Api::UsersSessionsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get api_users_sessions_index_url
    assert_response :success
  end

  test "should get show" do
    get api_users_sessions_show_url
    assert_response :success
  end

  test "should get create" do
    get api_users_sessions_create_url
    assert_response :success
  end

  test "should get update" do
    get api_users_sessions_update_url
    assert_response :success
  end

  test "should get destroy" do
    get api_users_sessions_destroy_url
    assert_response :success
  end
end
