json.array!(@speeches) do |speech|
  json.extract! speech, :id, :key_word, :count, :congressman_id
  json.url speech_url(speech, format: :json)
end
