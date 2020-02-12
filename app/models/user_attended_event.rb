class UserAttendedEvent < ApplicationRecord
  #belongs_to :attendees, class_name: "User", foreign_key: "user_id"
  #belongs_to :attended_events, class_name: "Event", foreign_key: "event_id"
  belongs_to :user
  belongs_to :event
end
