class Api::SportsController < ApplicationController
  def index
    @sports = Sport.all
    render :index
  end
end
