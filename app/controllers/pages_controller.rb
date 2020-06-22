class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @workouts = Workout.all.order(created_at: :desc).first(6)
    # @workout = Workout.find(params[:id])
  end

end
