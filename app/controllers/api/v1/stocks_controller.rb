class Api::V1::StocksController < ApplicationController

  # GET /api/v1/stocks
  def index
    @stocks = Stock.all

    render json: @stocks
  end
end
