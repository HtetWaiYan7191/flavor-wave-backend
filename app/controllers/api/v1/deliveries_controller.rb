# frozen_string_literal: true

module Api
  module V1
    class DeliveriesController < ApplicationController
      before_action :set_delivery, only: %i[show update destroy]

      def index
        if params[:search].present?
          search_value = params[:search]
      
          if search_value.match?(/^\d+$/)
            @deliveries = Delivery.joins(:preorder).where('preorders.id = ?', params[:search])
          else
            
            @deliveries = Delivery.joins(:preorder).joins(preorder: :client)
            .where("clients.name LIKE ?", "%#{client_name}%")
            .select("deliveries.*, clients.name as client_name")
          end
        else
          @deliveries = Delivery.all
        end

        render json: @deliveries.as_json(
          include: {
            truck: {
              only: [:license, :driver, :capacity]
            },
            preorder: {
              only: [:preorder_id], 
              include: {
                client: {
                  only: [:name, :phone, :address] 
                }
              }
            }
          }
        )
      end

    def show
        render json: @delivery.as_json(
          include: {
            truck: {
              only: [:license, :driver, :capacity]
            },
            preorder: {
              only: [:preorder_id], 
              include: {
                client: {
                  only: [:name, :phone, :address] 
                }
              }
            }
          }
        )
      end

      def create
        @delivery = Delivery.new(delivery_params)

        if @delivery.save
          render json: @deliveries.as_json(
            include: {
              truck: {
                only: [:license, :driver, :capacity]
              },
              preorder: {
                only: [:preorder_id], 
                include: {
                  client: {
                    only: [:name, :phone, :address] 
                  }
                }
              }
            }
          ), status: :created
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


