class Event < ApplicationRecord
    belongs_to :creator, class_name: "User", foreign_key: "user_id"

     has_many :user_attended_events
     has_many :attendees, through: :user_attended_events, source: :user 
end
