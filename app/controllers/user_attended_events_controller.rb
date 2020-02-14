class UserAttendedEventsController < ApplicationController
  def new
    @user_attended_event = UserAttendedEvent.new
  end

  def create
    @user_attended_event = current_user.user_attended_events.build()
    @user_attended_event.event_id = cookies[:event_id]
    if @user_attended_event.save
      flash[:success] = "Invitation Accepted"
      redirect_to current_user
    else
      flash[:error] = "Something is wrong"
      render 'new'
    end
  end
end
