@sports.each do |sport|
  json.set! sport.id do
    json.id sport.id
    json.sport sport.sport
  end
end


