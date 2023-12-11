require "test_helper"

class Api::V1::StocksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @api_v1_stock = api_v1_stocks(:one)
  end

  test "should get index" do
    get api_v1_stocks_url, as: :json
    assert_response :success
  end

  test "should create api_v1_stock" do
    assert_difference("Api::V1::Stock.count") do
      post api_v1_stocks_url, params: { api_v1_stock: {  } }, as: :json
    end

    assert_response :created
  end

  test "should show api_v1_stock" do
    get api_v1_stock_url(@api_v1_stock), as: :json
    assert_response :success
  end

  test "should update api_v1_stock" do
    patch api_v1_stock_url(@api_v1_stock), params: { api_v1_stock: {  } }, as: :json
    assert_response :success
  end

  test "should destroy api_v1_stock" do
    assert_difference("Api::V1::Stock.count", -1) do
      delete api_v1_stock_url(@api_v1_stock), as: :json
    end

    assert_response :no_content
  end
end
