require "test_helper"

class CocktailDetailsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get cocktail_details_index_url
    assert_response :success
  end

  test "should get show" do
    get cocktail_details_show_url
    assert_response :success
  end
end
