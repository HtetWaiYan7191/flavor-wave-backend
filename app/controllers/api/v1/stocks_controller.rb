class Api::V1::StocksController < ApplicationController
  before_action :set_api_v1_stock, only: %i[ show update destroy ]

  # GET /api/v1/stocks
  def index
    @stocks = Stock.all

    render json: @stocks
  end
end
