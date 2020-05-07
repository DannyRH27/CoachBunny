class Api::CoachingSessionsController < ApplicationController
  def index # return all ___ sessions
    # if params[:coaching_sessions][:sport_id]
    #   @coaching_sessions = CoachingSession.where(sport_id: params[:coaching_sessions][:sport_id])
    # else # return all sessions for the current user
      @coaching_sessions = CoachingSession.where(user_id: current_user.id)
    # end

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
      # @coaching_sessions = CoachingSession.where(user_id: current_user.id)
      # render :index
      redirect_to api_coaching_sessions # basically to render index
    else
      render json: @coaching_session.errors.full_messages, status: 422
    end
  end

  # get one session by ID, update params for that session
  def update 
    @coaching_session = CoachingSession.where(user_id: current_user.id).where(id: params[:id])

    if @coaching_session.update(coaching_session_params)
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
    # redirect_to api_coaching_sessions # basically to render index
  end

  private
  def coaching_session_params
    params.require(:coaching_sessions).permit(:sport_id, :coach_id, :user_id, 
      :training_date, :training_duration, :training_rate, :training_description)
  end

end
