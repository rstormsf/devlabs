class WelcomeController < ApplicationController
  def index
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    @user.save
    respond_to do |format|
      format.html { render :index, anchor: "contact"}
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :message)
  end
end
