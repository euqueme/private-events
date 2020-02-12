class EventsController < ApplicationController

    def new
        @event = Event.new
    end

    def create
        user = User.find_by(id: cookies.permanent.signed[:user_id])
        @event = user.events.build(event_params)
        if @event.save
            flash[:info] = 'Event Created'
            redirect_to user
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

    private

    def event_params
        params.require(:event).permit(:description)
    end
end
