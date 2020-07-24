@coaching_sessions.each do |session|
  json.set! session.id do 
    json.extract! session, :id, :sport_id, :coach_id, :user_id, :training_date,
      :training_duration, :training_description, :training_rate
    json.coach session.coach, :first_name, :last_name, :coach_description
    json.coach session.sport, :sport
  end
end