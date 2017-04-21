require 'test_helper'

class TorStarNewsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get tor_star_news_index_url
    assert_response :success
  end

end
