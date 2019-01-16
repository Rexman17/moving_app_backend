class Api::V1::MovesController < ApplicationController

  before_action :find_move, only: [:update, :show]

   def index
     @user = User.find(params[:user_id])
     @moves = @user.moves
     #
     # @moves = Move.all
     render json: @moves
   end

   def show
    # @move = Move.find(params[:id])
    render json: @move, status: 200
  end

    def create
     @move = Move.new(move_params)
     # byebug
     if @move.valid?
       @move.save
       render json: @move, status: :accepted
     else
       render json: { errors: @move.errors.full_messages }, status: :unprocessible_entity
     end
   end


   def update
     @move.update(move_params)
     if @move.save
       render json: @move, status: :accepted
     else
       render json: { errors: @move.errors.full_messages }, status: :unprocessible_entity
     end
   end

   def destroy
     @move = Move.find(params[:id])
     @move.destroy
     render json: @moves
   end

   private

   def move_params
     params.permit(:name, :date, :user_id)
   end

   def find_move
     @move = Move.find(params[:id])
   end

end
