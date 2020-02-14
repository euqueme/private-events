module EventsHelper
    def creator_name(event_id)
        name = User.find_by(id: Event.find(event_id).user_id).name
    end

    def remember_event(event_id)
        cookies[:event_id] = event_id 
    end

    def accepted_invitation?(event)
        event.invitees.where(id: [current_user.id]) == [current_user] && event.attendees.where(id: [current_user.id]) == [] 
    end

    def is_creator?
        @event.creator == current_user
    end
end
