class HomeController < ApplicationController

  helper_method :class_for_action, :mobile_device?, :ipad?, :main_id

  def index
    @fretboards = Fretboard.all
  end

  def class_for_action(action)
    action == params[:action] ? "current" : ""
  end

  def mobile_device?
    request.user_agent =~ /Mobile|webOS/ && (not ipad?)
  end

  def ipad?
    request.user_agent =~ /iPad/
  end

  def main_id
    return "mobile_app" if mobile_device?
    return "ipad_app" if ipad?
    return ""
  end
end
