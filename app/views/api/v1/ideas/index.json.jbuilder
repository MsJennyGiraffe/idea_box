json.ideas @ideas.each do |idea|
  json.id idea.id
  json.title idea.title
  json.body idea.body
  json.quality idea.quality
end
