require "test_helper"

class IngredientsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get ingredients_show_url
    assert_response :success
  end
end
