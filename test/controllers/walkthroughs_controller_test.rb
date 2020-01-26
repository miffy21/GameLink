require 'test_helper'

class WalkthroughsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get walkthroughs_index_url
    assert_response :success
  end

  test "should get show" do
    get walkthroughs_show_url
    assert_response :success
  end

  test "should get show_chapter" do
    get walkthroughs_show_chapter_url
    assert_response :success
  end

end
