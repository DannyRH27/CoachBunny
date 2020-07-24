@coaches.each do |coach|
  json.set! coach.id do 
    json.extract! coach, :id, :first_name, :last_name, :coach_description
  end
end
