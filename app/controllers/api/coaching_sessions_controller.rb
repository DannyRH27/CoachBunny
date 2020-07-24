class Api::CoachingSessionsController < ApplicationController
  def index # return all ___ sessions
      @coaching_sessions = CoachingSession.where(user_id: current_user.id)
    render :index
  end

  # show fulls details for one coaching session 
  # should this include coach name and sports name ?
  def show   
    @coaching_session = CoachingSession.where(user_id: current_user.id).where(id: params[:id])
    if @coaching_session
      render :show
    else
      render :index
    end
  end

  def create # create a new coaching session
    @coaching_session = CoachingSession.new(coaching_session_params)

    if @coaching_session.save
      @coaching_sessions = CoachingSession.where(user_id: current_user.id)
      render :index
    else
      render json: @coaching_session.errors.full_messages, status: 422
    end
  end

  # get one session by ID, update params for that session
  def update 
    @coaching_session = CoachingSession.find_by(id: params[:id])

    if @coaching_session.update(coaching_session_params)
      @coaching_sessions = CoachingSession.where(user_id: current_user.id)
      render :index
    else
      render json: @coaching_session.errors.full_messages, status: 422
    end

  end

  def destroy
    coaching_session = CoachingSession.where(user_id: current_user.id).find_by(id: params[:id])
    coaching_session.delete
    @coaching_sessions = CoachingSession.where(user_id: current_user.id)
    render :index
  end

  private
  def coaching_session_params
    params.require(:coaching_sessions).permit(:sport_id, :coach_id, :user_id, 
      :training_date, :training_duration, :training_rate, :training_description)
  end

end
