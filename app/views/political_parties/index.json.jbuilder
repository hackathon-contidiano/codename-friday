json.array!(@political_parties) do |political_party|
  json.extract! political_party, :id, :name, :description
  json.url political_party_url(political_party, format: :json)
end
