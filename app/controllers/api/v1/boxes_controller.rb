class Api::V1::BoxesController < ApplicationController

  before_action :find_box, only: [:update, :show]

   def index
     @move = Move.find(params[:move_id])
     @boxes = @move.boxes
     # @boxes = Box.all
     render json: @boxes
   end

   def show
    # @box = Box.find(params[:id])
    render json: @box, status: 200
  end

    def create
     @box = Box.new(box_params)
     # byebug
     if @box.valid?
       @box.save
       render json: @box, status: :accepted
     else
       render json: { errors: @box.errors.full_messages }, status: :unprocessible_entity
     end
   end


   def update
     @box.update(box_params)
     if @box.save
       render json: @box, status: :accepted
     else
       render json: { errors: @box.errors.full_messages }, status: :unprocessible_entity
     end
   end

   def destroy
     @box = Box.find(params[:id])
     @box.destroy
     render json: @boxes
   end

   private

   def box_params
     params.permit(:name, :category, :move_id)
   end

   def find_box
     @box = Box.find(params[:id])
   end

end
