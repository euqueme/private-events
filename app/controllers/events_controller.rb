# frozen_string_literal: true

class EventsController < ApplicationController
  def new
    @event = Event.new
  end

  def create
    @event = current_user.events.build(event_params)
    if @event.save
      remember_event @event.id
      flash[:info] = 'Event Created'
      redirect_to @event
    else
      flash[:info] = 'Event not Created'
      render 'new'
    end
  end

  def show
    @event = Event.find(params[:id])
    remember_event @event.id
  end

  def index
    @event = Event.all
  end

  def event_exists?(id)
    !Event.find(id).nil?
  end

  private

  def event_params
    params.require(:event).permit(:description, :venue, :date)
  end
end
