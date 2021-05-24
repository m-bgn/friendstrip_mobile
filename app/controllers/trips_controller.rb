class TripsController < ApplicationController
  skip_before_action :authenticate_user!
  def index
    @trips = Trip.all
  end

  def new
    @trip = Trip.new

  end

  def show
    @trip = Trip.find(params[:id])
  end

  def create 
    @trip = Trip.new(trip_params)
    if @trip.save
      redirect_to trips_paths
    else
      render :new
    end

  end

  private

  def trip_params
    params.require(:trip).permit(:start_date, :end_date, :title)
  end
end
