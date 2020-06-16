class WorkoutsController < ApplicationController

  def index
    @workouts = Workout.all
  end


  def show
    @workouts = Workout.find(params[:id])
  end


end
