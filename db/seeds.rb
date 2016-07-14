# DADOS https://paste.fedoraproject.org/390888/45413014/
data = File.read(Rails.root.join('db/deputados.txt'))

parsed_json = JSON.parse(data)


parsed_json.each do |name, data|
  
  partido = data['partido']
  
  political_party = PoliticalParty.where('lower(name) = ?', partido.downcase).first
  political_party ||= PoliticalParty.create(name: partido.upcase, description: "")
  
  congressman = Congressman.create(name:data['nome'], photo:data['urlFoto'], phone:data['fone'], federation_unity:data['uf'], email:data['email'], political_party_id:political_party.id)      

  puts congressman.inspect
  
  puts "++++++++++++++++++++++++++++++++++++++++++++++++++++++++\n\n"
  
end