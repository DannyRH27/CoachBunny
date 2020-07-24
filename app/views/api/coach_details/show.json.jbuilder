@coaches.each do |coach|
  json.set! coach.coach_id do
    json.extract! coach, :coach_id, :sport_id, :duration, 
      :elite_coach, :equipment, :coaching_rate
  end
end