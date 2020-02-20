# frozen_string_literal: true

class SessionsController < ApplicationController
  def new; end

  def create
    user = User.find_by(id: params[:session][:ide])
    puts "this is it #{params[:session][:ide]}"
    if !user.nil?
      remember(user)
      flash[:info] = 'User Logged in'
      redirect_to user
    else
      flash.now[:danger] = 'User doesn\'t exist'
      render 'new'
    end
  end

  def destroy
    if logged_in?
      log_out
      flash[:info] = 'User Logged out.'
    else
      flash[:info] = "User wasn't even logged in."
    end
    redirect_to root_url
  end
end
