# frozen_string_literal: true

# app/controllers/api/v1/preorders_controller.rb
module Api
  module V1
    class PreordersController < ApplicationController
      before_action :set_preorder, only: %i[show update destroy]

      def index
        if params[:search].present?
          search_value = params[:search]
      
          if search_value.match?(/^\d+$/)
            int = search_value.to_i
            @preorders = Preorder.find_by(id: int)
          else
            @preorders = Preorder.joins(:client).where('clients.name ILIKE ?', "%#{search_value}%")
          end
        else
          @preorders = Preorder.all
        end
      
        if @preorders.present?
          render json: @preorders.as_json(include: { client: { only: [:name, :region, :address] } })
        else
          render json: { message: 'No matching preorders found' }, status: :not_found
        end
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
        ActiveRecord::Base.transaction do
          # Fetch the client_id from the preorder hash
          client_id = params.dig(:preorder, :client_id)
          client = Client.find(client_id) if client_id
      
          @preorder = Preorder.new(preorder_params.merge(region: client&.region))
      
          if @preorder.save
            create_preorder_items
            render json: @preorder, status: :created
          else
            render json: @preorder.errors, status: :unprocessable_entity
          end
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

      def create_preorder_items
        return unless params[:preorder_items].is_a?(Array)
      
        params[:preorder_items].each do |item_data|
          @preorder.preorder_items.create(preorder_item_params(item_data))
        end
      end
      
      def preorder_item_params(item_data)
        item_data.permit(:stock_id, :quantity)
      end
    end
  end
end

