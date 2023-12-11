require "test_helper"

class Api::V1::StockDetailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @api_v1_stock_detail = api_v1_stock_details(:one)
  end

  test "should get index" do
    get api_v1_stock_details_url, as: :json
    assert_response :success
  end

  test "should create api_v1_stock_detail" do
    assert_difference("Api::V1::StockDetail.count") do
      post api_v1_stock_details_url, params: { api_v1_stock_detail: {  } }, as: :json
    end

    assert_response :created
  end

  test "should show api_v1_stock_detail" do
    get api_v1_stock_detail_url(@api_v1_stock_detail), as: :json
    assert_response :success
  end

  test "should update api_v1_stock_detail" do
    patch api_v1_stock_detail_url(@api_v1_stock_detail), params: { api_v1_stock_detail: {  } }, as: :json
    assert_response :success
  end

  test "should destroy api_v1_stock_detail" do
    assert_difference("Api::V1::StockDetail.count", -1) do
      delete api_v1_stock_detail_url(@api_v1_stock_detail), as: :json
    end

    assert_response :no_content
  end
end
