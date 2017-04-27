require 'test_helper'

class TwitterControllerTest < ActionDispatch::IntegrationTest
  test "should get _twitter" do
    get twitter__twitter_url
    assert_response :success
  end

end
