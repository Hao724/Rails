require "test_helper"

class ScheduledateControllerTest < ActionDispatch::IntegrationTest
  test "should get hello" do
    get scheduledate_hello_url
    assert_response :success
  end
end
