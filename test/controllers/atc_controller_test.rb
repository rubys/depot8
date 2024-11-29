require "test_helper"

class AtcControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get atc_index_url
    assert_response :success
  end
end
