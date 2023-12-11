# app/controllers/api/v1/preorders_controller.rb
class Api::V1::PreordersController < ApplicationController
  before_action :set_preorder, only: [:show, :update, :destroy]

  def index
    if params[:search].present?
      # @client = Client.find_by(name: params[:search])
      # @preorders = @client.preorders if @client
      @preorders = Preorder.joins(:client).where("clients.name LIKE ?", "%#{params[:search]}%")
    else
      @preorders = Preorder.all
    end
    render json: @preorders
  end

  def filter_by_order_status
    @preorders = Preorder.where(order_status: params[:order_status])
    render json: @preorders
  end

  def filter_by_order_date
    @preorders = Preorder.where(order_date: params[:order_date])
    render json: @preorders
  end

  def show
    render json: @preorder
  end

  def create
    @preorder = Preorder.new(preorder_params)

    if @preorder.save
      render json: @preorder, status: :created
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
