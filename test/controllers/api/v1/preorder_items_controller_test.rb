require "test_helper"

class Api::V1::PreorderItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @api_v1_preorder_item = api_v1_preorder_items(:one)
  end

  test "should get index" do
    get api_v1_preorder_items_url, as: :json
    assert_response :success
  end

  test "should create api_v1_preorder_item" do
    assert_difference("Api::V1::PreorderItem.count") do
      post api_v1_preorder_items_url, params: { api_v1_preorder_item: {  } }, as: :json
    end

    assert_response :created
  end

  test "should show api_v1_preorder_item" do
    get api_v1_preorder_item_url(@api_v1_preorder_item), as: :json
    assert_response :success
  end

  test "should update api_v1_preorder_item" do
    patch api_v1_preorder_item_url(@api_v1_preorder_item), params: { api_v1_preorder_item: {  } }, as: :json
    assert_response :success
  end

  test "should destroy api_v1_preorder_item" do
    assert_difference("Api::V1::PreorderItem.count", -1) do
      delete api_v1_preorder_item_url(@api_v1_preorder_item), as: :json
    end

    assert_response :no_content
  end
end
