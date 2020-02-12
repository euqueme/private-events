class Event < ApplicationRecord
    belongs_to :creator, class_name: "User", foreign_key: "user_id"

     has_many :user_attended_events
     has_many :attendees, through: :user_attended_events, source: :user 

     has_many :invitations
     has_many :invitees, through: :invitations, source: :user 

     scope :past, -> { where("date < ?", Time.now) }
     scope :upcoming, -> { !past }
    # def past_events
    # current_user.attended_events.where("date < ?", Time.now)
    # end

    # def upcoming_events
    # current_user.attended_events.where("date >= ?", Time.now)
    # end
end
