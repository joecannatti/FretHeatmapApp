class HomeController < ApplicationController

  helper_method :class_for_action

  def index
    @fretboards = Fretboard.all
  end

  def class_for_action(action)
    action == params[:action] ? "current" : ""
  end
end
