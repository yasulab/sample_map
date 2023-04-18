require 'net/http'
uri = URI('https://localmap.jp/scaffold.json')
response = Net::HTTP.get(uri)
map_data = JSON.parse(response)
map_data.each do |map|
  spot = Spot.new(
    id:   map['id'], 
    lat:  map['lat'],
    lng:  map['lng'],
    name: map['name'],
    url:  map['url'],
  )
  spot.photo.attach(
    io: URI.open(map['photo']), 
    filename: map['id'] + '.jpg',
  )
  spot.save
end