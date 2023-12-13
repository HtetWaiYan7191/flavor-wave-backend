# frozen_string_literal: true

# app/controllers/api/v1/preorders_controller.rb
module Api
  module V1
    class PreordersController < ApplicationController
      before_action :set_preorder, only: %i[show update destroy]

      def index
        @preorders = if params[:search].present?
                       # @client = Client.find_by(name: params[:search])
                       # @preorders = @client.preorders if @client
                       Preorder.joins(:client).where('clients.name ILIKE ?', "%#{params[:search]}%")
                     else
                       Preorder.all
                     end
                     render json: @preorders.as_json(include: { client: { only: :name } })

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
          render json: @preorder.as_json(include: { client: { only: :name } })
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
        params.require(:preorder).permit(:client_id, :quantity, :region, :township, :order_date, :order_status, :total,:urgent, :permission,
                                         :user_id)
      end
    end
  end
end

