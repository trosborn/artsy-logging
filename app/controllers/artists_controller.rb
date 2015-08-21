class ArtistsController < ApplicationController
  after_action :lumberjack, only: :index
  before_action :start_time, only: :index

  def index
    @artist = Artist.get(params[:search])
    respond_to do |format|
      format.js
    end
  end

  def new
  end

  def lumberjack
    Lumberjack.save params[:search], request.ip, @artist._links.count, end_time
  end

  def start_time
    @time = Time.now
  end

  def end_time
    Time.now - @time
  end
end

