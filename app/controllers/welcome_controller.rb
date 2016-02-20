class WelcomeController < ApplicationController
  def index
  end

  def contact
    @lead = User.new(params[:lead])
    respond_to do |format|
      format.ajax { }
    end
    ContactMailer.send_lead(@lead).deliver_later
  end
end
