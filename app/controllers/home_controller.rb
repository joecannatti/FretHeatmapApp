class HomeController < ApplicationController
  def index
    @fretboards = Fretboard.all
  end
end
