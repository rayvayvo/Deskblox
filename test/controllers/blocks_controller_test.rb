require 'test_helper'

class BlocksControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get blocks_index_url
    assert_response :success
  end

end
