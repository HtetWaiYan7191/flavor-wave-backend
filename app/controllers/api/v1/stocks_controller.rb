# frozen_string_literal: true

module Api
  module V1
    class StocksController < ApplicationController
      # GET /api/v1/stocks
      def index       
        if params[:search].present?
          @stocks = Stock.where('stocks.name ILIKE ?', "%#{params[:search]}%")
        else
          @stocks = Stock.all
        end
      
        render json: @stocks.map(&:to_json_with_sorted_stock_details)
      end

      def show
        render json: @stock
      end

      def create
        @stock = Stock.new(stock_params)

        if @stock.save
          render json: @stock, status: :created
        else
          render json: @stock.errors, status: :unprocessable_entity
        end
      end

      def update
        if @stock.update(stock_params)
          render json: @stock
        else
          render json: @stock.errors, status: :unprocessable_entity
        end
      end

      def destroy
        @stock.destroy
      end

      private

      def set_stock
        @stock = Stock.find(params[:id])
      end

      def stock_params
        params.require(:stock).permit(:name, :quantity, :unit_price)
      end
    end
  end
end
