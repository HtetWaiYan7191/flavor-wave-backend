class Api::V1::PreorderItemsController < ApplicationController
  before_action :set_preorder_item, only: %i[ show update destroy ]

  def index
    @preorder_items = PreorderItem.all

    render json: @preorder_items
  end

  def show
    render json: @preorder_item
  end

  def create
    @preorder_item = PreorderItem.new(preorder_item_params)

    if @preorder_item.save
      render json: @preorder_item, status: :created
    else
      render json: @preorder_item.errors, status: :unprocessable_entity
    end
  end

  def update
    if @preorder_item.update(preorder_item_params)
      render json: @preorder_item
    else
      render json: @preorder_item.errors, status: :unprocessable_entity
    end
  end

  # DELETE /api/v1/preorder_items/1
  def destroy
    @preorder_item.destroy
  end

  private
    def set_preorder_item
      @preorder_item = PreorderItem.find(params[:id])
    end

    def preorder_item_params
      params.require(:preorder_item).permit(:preorder_id, :stock_id, :quantity)
    end
end