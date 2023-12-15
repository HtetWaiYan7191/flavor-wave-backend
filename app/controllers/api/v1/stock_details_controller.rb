# frozen_string_literal: true

module Api
  module V1
    class StockDetailsController < ApplicationController
      before_action :set_stock_detail, only: %i[show update destroy]

      def index
        stock_details = StockDetail.where(stock_id: params[:stock_id])
      
        stock_details = stock_details.sort_by { |detail| Date.parse(detail.expiry_date) }
      
        render json: stock_details
      end
      

      def show
        render json: @stock_detail
      end

      def create
        @stock_detail = StockDetail.new(stock_detail_params)

        if @stock_detail.save
          render json: @stock_detail, status: :created
        else
          render json: @stock_detail.errors, status: :unprocessable_entity
        end
      end

      def update
        if @stock_detail.update(stock_detail_params)
          render json: @stock_detail
        else
          render json: @stock_detail.errors, status: :unprocessable_entity
        end
      end

      def destroy
        @stock_detail.destroy
      end

      private

      def set_stock_detail
        @stock_detail = StockDetail.find(params[:id])
      end

      def stock_detail_params
        params.require(:stock).permit(:restock_id, :quantity, :expiry_date, :stock_id)
      end

    end
  end
end
