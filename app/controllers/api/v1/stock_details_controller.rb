class Api::V1::StockDetailsController < ApplicationController
  before_action :set_api_v1_stock_detail, only: %i[ show update destroy ]

  # GET /api/v1/stock_details
  def index
    @stock_details = StockDetail.all

    render json: @stock_details
  end

  # GET /api/v1/stock_details/1
  def show
    render json: @stock_detail
  end
end
