require "test_helper"

class ListControllerTest < ActionDispatch::IntegrationTest
  test "should get id" do
    get list_id_url
    assert_response :success
  end
end
