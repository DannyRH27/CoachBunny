# show details for one coach

@details.each do |detail|
  json.set! detail.id do 
    json.extract! detail, :id, :coach_id, :sport_id, :duration, 
      :elite_coach, :equipment, :coaching_rate
  end
end