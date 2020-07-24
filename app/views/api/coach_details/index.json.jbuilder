@coaches.each do |coach|
  json.set! coach.coach_id do
    json.extract! coach, :id, :coach_id, :sport_id, :duration, 
      :elite_coach, :equipment, :coaching_rate, :session_description
    json.coach coach.coach, :first_name, :last_name, :coach_description  
  end
end