# frozen_string_literal: true

module Api
  module V1
    class TrucksController < ApplicationController
      before_action :set_truck, only: %i[show update destroy]

      # GET /api/v1/trucks
      def index
        @trucks = Truck.all

        render json: @trucks
      end

      # GET /api/v1/trucks/1
      def show
        render json: @truck
      end

      # POST /api/v1/trucks
      def create
        @truck = Truck.new(truck_params)

        if @truck.save
          render json: @truck, status: :created
        else
          render json: @truck.errors, status: :unprocessable_entity
        end
      end

      # PATCH/PUT /api/v1/trucks/1
      def update
        if @truck.update(truck_params)
          render json: @truck
        else
          render json: @truck.errors, status: :unprocessable_entity
        end
      end

      # DELETE /api/v1/trucks/1
      def destroy
        @truck.destroy
      end

      private

      # Use callbacks to share common setup or constraints between actions.
      def set_truck
        @truck = Truck.find(params[:id])
      end

      # Only allow a list of trusted parameters through.
      def truck_params
        params.require(:truck).permit(:license, :driver, :region, :township, :capacity, :available, :current_capacity)
      end
    end
  end
end
