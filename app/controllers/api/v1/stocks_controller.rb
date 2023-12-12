# frozen_string_literal: true

module Api
  module V1
    class StocksController < ApplicationController
      # GET /api/v1/stocks
      def index
        @stocks = Stock.all

        render json: @stocks
      end
    end
  end
end
