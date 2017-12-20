class TrackersController < ApplicationController
  def index
    @trackers = Tracker.all
    render json: @trackers
  end

  def create
  end

  def update
  end

  def destroy
  end
end
