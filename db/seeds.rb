# DADOS https://paste.fedoraproject.org/390888/45413014/
data = File.read(Rails.root.join('db/congressman.txt'))
# data = File.read(Rails.root.join('db/congressman_demo.txt'))

parsed_json = JSON.parse(data)
parsed_json.each do |name, data|
  
  party = data['party']
  
  political_party = PoliticalParty.where('lower(name) = ?', party.downcase).first
  political_party ||= PoliticalParty.create(name: party.upcase, description: "")
  
  congressman = Congressman.create(name:data['name'], 
                                   photo:data['photo'], 
                                   phone:data['phone'], 
                                   federation_unity:data['state'], 
                                   email:data['email'], 
                                   coherence:data['coherence'],
                                   political_party_id:political_party.id)      


  proposals = data['proposals']
  proposals.each do |key_word, count|
    Proposal.create(key_word: key_word, count: count, congressman_id: congressman.id)
  end
  
  
  speeches = data['speeches']
  speeches.each do |key_word, count|
    Speech.create(key_word: key_word, count: count, congressman_id: congressman.id)
  end
  
  congressman.reload
  
  puts "Congressman <id: #{congressman.id}, name: #{congressman.name}, coherence: #{congressman.coherence}, proposals: #{congressman.proposals.count}, speeches: #{congressman.speeches.count}>\n\n"  
end