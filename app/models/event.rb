# frozen_string_literal: true

class Event < ApplicationRecord
  belongs_to :creator, class_name: 'User', foreign_key: 'user_id'

  has_many :user_attended_events
  has_many :attendees, through: :user_attended_events, source: :user

  has_many :invitations
  has_many :invitees, through: :invitations, source: :user

  scope :past, -> { where('date < ?', Time.now) }
  scope :upcoming, -> { !past }

  validates :description, presence: true
end
