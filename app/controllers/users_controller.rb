class UsersController < ApplicationController
  def index

    @user = User.all
    render json: @user
  end

  def create
    @user = User.new(user_params)
    # user = User.all.find{|i| i.id === @user.userId}
    # @user.user_id = user
    if @user.save

      render json: @user
    else
      render json: {errors: @user.errors.full_messages}
    end
  end

  def update
    @user = User.find(params[:id])
    @user.rating = params[:rating]
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
  end

  private
  def user_params
    params.require(:user).permit(:username, :location, :picture)
  end
end

def index

  @user = User.all
  render json: @user
end

def create
  @reservation = User.new(user_params)
  # user = User.all.find{|i| i.id === @reservation.userId}
  # @reservation.user_id = user
  if @reservation.save

    render json: @reservation
  else
    render json: {errors: @reservation.errors.full_messages}
  end
end

def update
  @reservation = User.find(params[:id])
  @reservation.rating = params[:rating]
end

def destroy
  @reservation = User.find(params[:id])
  @reservation.destroy
end

private
def user_params
  params.require(:reservation).permit(:start_date, :end_date)
end
