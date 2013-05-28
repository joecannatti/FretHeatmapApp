class HomeController < ApplicationController

  helper_method :class_for_action, :mobile_device?, :ipad?, :main_id, :embeded?

  def index
    @fretboards = Fretboard.all
  end

  def embed
    @fretboards = Fretboard.all
    @embeded = true
    response.headers["X-Frame-Options"] = "ALLOW-FROM http://www.guardian.co.uk"
    render :index
  end

  def embeded?
    @embeded
  end

  def class_for_action(action)
    action == params[:action] ? "current" : ""
  end

  def mobile_device?
    ((request.user_agent =~ /Mobile|webOS/) && (not ipad?)) || @embeded
  end

  def ipad?
    request.user_agent =~ /iPad/
  end

  def main_id
    return "mobile_app" if mobile_device? and not embeded?
    return "ipad_app" if ipad? and not embeded?
    return "embeded_app" if mobile_device? and embeded?
    return ""
  end
end
