module EventsHelper
    def creator_name(event_id)
        name = User.find_by(id: Event.find(event_id).user_id).name
    end
end
