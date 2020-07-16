module Api
  module V1
    class StructuresController < ApplicationController
      def index
        structures = Structure.order('created_at DESC');
        render json: {status: 'SUCCESS', message: 'Loaded articles', data: structures},status: :ok
      end

      def show
        structure = Structure.find(params[:id])
        render json: {status: 'SUCCESS', data: structure}
      end

      def create
        structure = Structure.new(structure_params)
        if structure.save
          render json: {status: 'SUCCESS', message: 'saved article', data: structure}, status: :ok
        else
          render json: {status: 'SUCCESS', message: 'saved article', data: structure.errors}, status: :unprocessable_entity
        end
      end

      def destroy
        structure = Structure.find(params[:id])
        structure.destroy
        render json: {status: 'SUCCESS', message: 'deleted article', data: structure}, status: :ok
      end

      def update
        structure = Structure.find(params[:id])
        if structure.update_attributes(structure_params)
          render json: {status: 'SUCCESS', message: 'updated article', data: structure}, status: :ok
        else
          render json: {status: 'SUCCESS', message: 'article not updated', data: structure.error}, status: :unprocessable_entity
        end
      end

      private

      def structure_params
        params.permit(:title, :body)
      end
    end
  end
end
