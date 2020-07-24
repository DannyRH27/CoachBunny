class Api::CoachDetailsController < ApplicationController
  def index # get all the coach details for a specific sport
    found_sport = Sport.find_by(id: params[:sport_id])
    duration_beginning = params[:duration].split("-")[0]
    duration_ending = params[:duration].split("-")[1]
    @coaches = found_sport.coach_details
      .where("duration BETWEEN #{duration_beginning} AND #{duration_ending}")
    render :index
  end
  
  def show # show all the details for a specific coach
    @coaching_session = CoachDetail.find_by(id: params[:id])
    render :show
  end

  private
  def coach_details_params
    params.require(:coach_details).permit(:sport_id, :duration)
  end
end

