class Api::V1::ItemsController < ApplicationController
  before_action :find_item, only: [:update, :show]

   def index
     # @items = Item.all
     @box = Box.find(params[:box_id])
     @items = @box.items
     # @boxes = Box.all
     # render json: @boxes
     render json: @items
   end

   def allItemsInAMove
     @move = Move.find(params[:move_id])
     @boxes = @move.boxes
     # @items = @boxes.map((box) => box.items)
   end

   def show
    # @item = Item.find(params[:id])
    render json: @item, status: 200
  end

    def create
     @item = Item.new(item_params)
     # byebug
     if @item.valid?
       @item.save
       render json: @item, status: :accepted
     else
       render json: { errors: @item.errors.full_messages }, status: :unprocessible_entity
     end
   end


   def update
     @item.update(item_params)
     if @item.save
       render json: @item, status: :accepted
     else
       render json: { errors: @item.errors.full_messages }, status: :unprocessible_entity
     end
   end

   def destroy
     @item = Item.find(params[:id])
     @item.destroy
     render json: @items
   end

   private

   def item_params
     params.permit(:name, :image, :box_id)
   end

   def find_item
     @item = Item.find(params[:id])
   end

end
