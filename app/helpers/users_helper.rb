module UsersHelper
  def current_name
    "#{User.find(cookies.permanent.signed[:user_id]).name} #{User.find(cookies.permanent.signed[:user_id]).lastname}"
  end
end
