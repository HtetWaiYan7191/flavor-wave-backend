# frozen_string_literal: true

require 'test_helper'

module Api
  module V1
    class DeliveriesControllerTest < ActionDispatch::IntegrationTest
      setup do
        @api_v1_delivery = api_v1_deliveries(:one)
      end

      test 'should get index' do
        get api_v1_deliveries_url, as: :json
        assert_response :success
      end

      test 'should create api_v1_delivery' do
        assert_difference('Api::V1::Delivery.count') do
          post api_v1_deliveries_url, params: { api_v1_delivery: {} }, as: :json
        end

        assert_response :created
      end

      test 'should show api_v1_delivery' do
        get api_v1_delivery_url(@api_v1_delivery), as: :json
        assert_response :success
      end

      test 'should update api_v1_delivery' do
        patch api_v1_delivery_url(@api_v1_delivery), params: { api_v1_delivery: {} }, as: :json
        assert_response :success
      end

      test 'should destroy api_v1_delivery' do
        assert_difference('Api::V1::Delivery.count', -1) do
          delete api_v1_delivery_url(@api_v1_delivery), as: :json
        end

        assert_response :no_content
      end
    end
  end
end
