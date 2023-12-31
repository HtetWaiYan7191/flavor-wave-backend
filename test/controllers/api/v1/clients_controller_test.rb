# frozen_string_literal: true

require 'test_helper'

module Api
  module V1
    class ClientsControllerTest < ActionDispatch::IntegrationTest
      setup do
        @api_v1_client = api_v1_clients(:one)
      end

      test 'should get index' do
        get api_v1_clients_url, as: :json
        assert_response :success
      end

      test 'should create api_v1_client' do
        assert_difference('Api::V1::Client.count') do
          post api_v1_clients_url, params: { api_v1_client: {} }, as: :json
        end

        assert_response :created
      end

      test 'should show api_v1_client' do
        get api_v1_client_url(@api_v1_client), as: :json
        assert_response :success
      end

      test 'should update api_v1_client' do
        patch api_v1_client_url(@api_v1_client), params: { api_v1_client: {} }, as: :json
        assert_response :success
      end

      test 'should destroy api_v1_client' do
        assert_difference('Api::V1::Client.count', -1) do
          delete api_v1_client_url(@api_v1_client), as: :json
        end

        assert_response :no_content
      end
    end
  end
end
