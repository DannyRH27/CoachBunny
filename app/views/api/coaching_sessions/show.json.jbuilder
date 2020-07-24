@coaching_session.each do |session|
  json.set! session.id do 
    json.extract! session, :id, :sport_id, :coach_id, :user_id, :training_date,
      :training_duration, :training_description, :training_rate
  end
end