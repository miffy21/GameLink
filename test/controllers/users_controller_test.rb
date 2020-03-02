require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get user_path
    assert_response :success
  end

  test "should get edit" do
    get edit_user_path
    assert_response :success
  end

  test "should get update" do
    get users_update_url
    assert_response :success
  end

  test "should get exit" do
    get users_exit_url
    assert_response :success
  end

end
