# frozen_string_literal: true

module Api
  module V1
    class StockDetailsController < ApplicationController
      before_action :set_api_v1_stock_detail, only: %i[show update destroy]

      def index
        @stock_details = StockDetail.where(stock_id: params[:stock_id])
        render json: @stock_details
      end

      def show
        render json: @stock_detail
      end

      private

      def set_api_v1_stock_detail
        @stock_detail = StockDetail.find(params[:id])
      end
    end
  end
end
