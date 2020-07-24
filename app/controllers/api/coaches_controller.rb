class Api::CoachesController < ApplicationController
  # get all coaches that match sport ID 
  def index
    found_sport = Sport.find(params[:sport_id]) # finds sport based on passed ID
    @coaches = found_sport.coaches 
    render :index
  end

  # show details (all coachable sports) for one coach.
  # i don't think i need this now, would come in handy if a 
  # user wants to show all a coaches other sessions
  def show  
    coach = Coach.find_by(id: params[:id])
    @details = coach.details
    render :show
  end  
end

# @coaches = Coach.where(sport_id: passed_sport_id)