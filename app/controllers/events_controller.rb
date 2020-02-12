class EventsController < ApplicationController

    def new
        @event = Event.new
    end

    def create
        @event = current_user.events.build(event_params)
        if @event.save
            flash[:info] = 'Event Created'
            redirect_to current_user
        else 
            flash[:info] = 'Event not Created'
            render 'new'
        end

    end

    def show
        @event = Event.find(params[:id]) 

    end

    def index
        @event = Event.all
    end

    def event_exists?(id)
        !Event.find(id).nil?
    end

    private

    def event_params
        params.require(:event).permit(:description)
    end
end
