module UsersHelper
  def current_name
    "#{current_user.name} #{current_user.lastname}"
  end

  def past_events
    current_user.attended_events.where("date < ?", Time.now)
  end
  
  def upcoming_events
    current_user.attended_events.where("date >= ?", Time.now).or(current_user.attended_events.where("date IS NULL"))
  end

end
