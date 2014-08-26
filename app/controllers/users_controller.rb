class UsersController < ApplicationController

  def create
    @user = User.new(user_params)
    @user.save

    render text: "User created:"
    #render json: @user
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    render text: "destroyed"
  end

  def index
    render json: User.all
  end

  def show
    @user = User.find(params[:id])
    render json: @user
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      render json: @user
    else
      render(
        json: @user.errors.full_messages, status: :unprocessable_entity
      )
    end
  end


  private
  def user_params
    params.require(:user).permit(:name, :email)
  end
end
