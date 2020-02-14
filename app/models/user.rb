class User < ApplicationRecord
    has_many :events

    has_many :user_attended_events
    has_many :attended_events, through: :user_attended_events, source: :event 

    has_many :invitations
    has_many :invites, through: :invitations, source: :user 

end
