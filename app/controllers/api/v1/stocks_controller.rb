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
        render json: @stocks.as_json(include: { stock_details: { only: :expiry_date } })

      end
    end
  end
end
