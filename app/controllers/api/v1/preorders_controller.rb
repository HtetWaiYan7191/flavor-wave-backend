# app/controllers/api/v1/preorders_controller.rb
class Api::V1::PreordersController < ApplicationController
  before_action :set_preorder, only: [:show, :update, :destroy]

  def index
    @preorders = Preorder.all
    render json: @preorders
  end

  def show
    render json: @preorder
  end

  def create
    @preorder = Preorder.new(preorder_params)

    if @preorder.save
      render json: @preorder, status: :created, location: @preorder
    else
      render json: @preorder.errors, status: :unprocessable_entity
    end
  end

  def update
    if @preorder.update(preorder_params)
      render json: @preorder
    else
      render json: @preorder.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @preorder.destroy
  end

  private

  def set_preorder
    @preorder = Preorder.find(params[:id])
  end

  def preorder_params
    params.require(:preorder).permit(:client_id, :quantity, :order_date, :order_status, :total, :permission, :user_id)
  end
end
