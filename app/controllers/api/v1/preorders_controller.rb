# frozen_string_literal: true

# app/controllers/api/v1/preorders_controller.rb
module Api
  module V1
    class PreordersController < ApplicationController
      before_action :set_preorder, only: %i[show update destroy]

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
        params.require(:preorder).permit(:client_id, :quantity, :order_date, :order_status, :total, :permission,
                                         :user_id)
      end
    end
  end
end
