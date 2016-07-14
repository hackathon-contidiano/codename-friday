json.array!(@congressmen) do |congressman|
  json.extract! congressman, :id, :name, :photo, :phone, :federation_unity, :email, :political_party_id
  json.url congressman_url(congressman, format: :json)
end
