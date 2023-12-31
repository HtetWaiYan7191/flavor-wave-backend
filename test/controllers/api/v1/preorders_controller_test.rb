# frozen_string_literal: true

require 'test_helper'

module Api
  module V1
    class PreordersControllerTest < ActionDispatch::IntegrationTest
      setup do
        @api_v1_preorder = api_v1_preorders(:one)
      end

      test 'should get index' do
        get api_v1_preorders_url, as: :json
        assert_response :success
      end

      test 'should create api_v1_preorder' do
        assert_difference('Api::V1::Preorder.count') do
          post api_v1_preorders_url, params: { api_v1_preorder: {} }, as: :json
        end

        assert_response :created
      end

      test 'should show api_v1_preorder' do
        get api_v1_preorder_url(@api_v1_preorder), as: :json
        assert_response :success
      end

      test 'should update api_v1_preorder' do
        patch api_v1_preorder_url(@api_v1_preorder), params: { api_v1_preorder: {} }, as: :json
        assert_response :success
      end

      test 'should destroy api_v1_preorder' do
        assert_difference('Api::V1::Preorder.count', -1) do
          delete api_v1_preorder_url(@api_v1_preorder), as: :json
        end

        assert_response :no_content
      end
    end
  end
end
