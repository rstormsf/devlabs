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

  def contact
    @lead = User.new(params[:lead])
    respond_to do |format|
      format.ajax { }
    end
    ContactMailer.send_lead(@lead).deliver_later
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :message)
  end
end
