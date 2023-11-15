require "test_helper"

class StockControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get stock_index_url
    assert_response :success
  end

  test "should get new" do
    get stock_new_url
    assert_response :success
  end

  test "should get create" do
    get stock_create_url
    assert_response :success
  end

  test "should get destroy" do
    get stock_destroy_url
    assert_response :success
  end
end
