require 'test_helper'

class YouTubeControllerTest < ActionDispatch::IntegrationTest
  test "should get _youtube" do
    get you_tube__youtube_url
    assert_response :success
  end

end
