require 'test_helper'

class RoutesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get routes_index_url
    assert_response :success
  end

end
