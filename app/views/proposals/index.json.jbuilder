json.array!(@proposals) do |proposal|
  json.extract! proposal, :id, :key_word, :count, :congressman_id
  json.url proposal_url(proposal, format: :json)
end
