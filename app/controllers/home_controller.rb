class HomeController < ApplicationController

  helper_method :class_for_action, :mobile_device?

  def index
    @fretboards = Fretboard.all
  end

  def class_for_action(action)
    action == params[:action] ? "current" : ""
  end

  def mobile_device?
    if session[:mobile_param]
      session[:mobile_param] == "1"
    else
      request.user_agent =~ /Mobile|webOS/
    end
  end
end
