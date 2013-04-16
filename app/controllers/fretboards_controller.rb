class FretboardsController < ApplicationController
  before_action :set_fretboard, only: [:show, :edit, :update, :destroy]
  respond_to :json, :html

  # GET /fretboards
  def index
    @fretboards = Fretboard.all
    respond_with @fretboards
  end

  # GET /fretboards/1
  def show
    respond_with @fretboard
  end

  # GET /fretboards/new
  def new
    @fretboard = Fretboard.new
  end

  # GET /fretboards/1/edit
  def edit
  end

  # POST /fretboards
  def create
    @fretboard = Fretboard.new(fretboard_params)

    if @fretboard.save
      redirect_to @fretboard, notice: 'Fretboard was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /fretboards/1
  def update
    if @fretboard.update(fretboard_params)
      redirect_to @fretboard, notice: 'Fretboard was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /fretboards/1
  def destroy
    @fretboard.destroy
    redirect_to fretboards_url, notice: 'Fretboard was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fretboard
      @fretboard = Fretboard.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fretboard_params
      params[:fretboard]
    end
end
