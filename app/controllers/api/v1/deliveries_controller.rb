# frozen_string_literal: true

module Api
  module V1
    class DeliveriesController < ApplicationController
      before_action :set_delivery, only: %i[show update destroy]

      def index
        @deliveries = Delivery.all
        render json: @deliveries.as_json(include: { truck: { only: [:license, :driver] } })
      end

      def show
        render json: @delivery
      end

      def create
        @delivery = Delivery.new(delivery_params)

        if @delivery.save
          render json: @delivery, status: :created
        else
          render json: @delivery.errors, status: :unprocessable_entity
        end
      end

      def update
        if @delivery.update(delivery_params)
          render json: @delivery
        else
          render json: @delivery.errors, status: :unprocessable_entity
        end
      end

      def destroy
        @delivery.destroy
      end

      private

      def set_delivery
        @delivery = Delivery.find(params[:id])
      end

      def delivery_params
        params.require(:delivery).permit(:preorder_id, :truck_id, :distance, :delivery_date)
      end
    end
  end
end
