class Api::V1::UsersController < ApplicationController

  before_action :find_user, only: [:show]

 def index
   @users = User.all
   render json: @users
 end

 # def profile
 #    render json: { user: UserSerializer.new(current_user) }, status: :accepted
 #  end

 def show
    render json: @user, status: :ok
  end

  # def create
  #   @user = User.create(user_params)
  #   if @user.valid?
  #     @token = encode_token(user_id: @user.id)
  #     render json: { user: UserSerializer.new(@user), jwt: @token }, status: :created
  #   else
  #     render json: { error: 'failed to create user' }, status: :not_acceptable
  #   end
  # end

  # def destroy
  #   @user.destroy
  # end

  # WITHOUT AUTH
  def create
   @user = User.new(user_params)
   # byebug
   if @user.valid?
     @user.save
     render json: @user, status: :accepted
   else
     render json: { errors: @user.errors.full_messages }, status: :unprocessible_entity
   end
 end

 def update
   @user.update(user_params)
   if @user.save
     render json: @user, status: :accepted
   else
     render json: { errors: @user.errors.full_messages }, status: :unprocessible_entity
   end
 end

 private

 # # TODO: when i add auth, will have to add username and password
 # password_digest to the schema though
 def user_params
   params.permit(:name)
 end

 def find_user
   @user = User.find(params[:id])
 end

end
