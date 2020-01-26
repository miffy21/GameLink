require 'test_helper'

class ContentsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get contents_index_url
    assert_response :success
  end

  test "should get about" do
    get contents_about_url
    assert_response :success
  end

end
