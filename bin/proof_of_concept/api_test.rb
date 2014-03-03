require 'lol'
require 'pp'

client = Lol::Client.new "6a4e5fbd-b36b-4816-bd3f-f2b3b2086fc5"

champions = client.static.champion.get(champData: 'all')

champions.each do |c|
  if c.name.match('Teemo')
    @teemo = c
  end
end

pp @teemo
