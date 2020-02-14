class InvitationsController < ApplicationController
  def new
    @invitation = Invitation.new
  end

  def create
    @invitation = Invitation.new(invitation_params)
    @invitation.event_id = cookies[:event_id]
    if @invitation.save!
      flash[:info] = "Invitation sent"
      redirect_to Event.find(@invitation.event_id) 
    else 
      flash[:info] = "Invitation sending failed"
      render 'new'
    end
  end

  private 
  
  def invitation_params
    params.require(:invitation).permit(:user_id)
  end
end
