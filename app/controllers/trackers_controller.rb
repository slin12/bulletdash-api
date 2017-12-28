class TrackersController < ApplicationController
  def index
    trackers = Tracker.get_last_seven(current_user)
    render json: trackers
  end

  def create
    Tracker.create(date_format: params['dateValue'].to_date, steps: params['stepValue'].to_i, user: current_user)
    trackers = Tracker.get_last_seven(current_user)
    render json: trackers
  end

  def update
  end

  def destroy
  end
end
