require 'test_helper'

class YourtasksControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get yourtasks_index_url
    assert_response :success
  end

end
