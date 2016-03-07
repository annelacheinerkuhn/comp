
require 'twitter'

twitter_api = Twitter::REST::Client.new do |config|
  config.consumer_key        = "LqrHKewOutfp7ifUOAm7efLjJ"
  config.consumer_secret     = "w2QcQjKEMF2WT1xDppQ2ORgpNMuts1X0AbdnKTKjVKzWy1TlQO"
  config.access_token        = "394759745-TnX3bwowLkq1s4bPGkX3dtXWqSHy2t80EoChYKhF"
  config.access_token_secret = "F5CLCkla21k3wuyPsLLEywfczO5ZziylVOqDD1IXqx4dZ"
end

GuardianTravel = twitter_api.search("japan filter:images from:GuardianTravel")

GuardianTravel.each do |tweet|
  first_photo_uri = tweet.media[0].media_uri.to_s
  puts first_photo_uri
end
