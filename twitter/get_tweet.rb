require 'twitter'

#Twitter.configure do |cnf|
#  cnf.consumer_key = "xN8WWEAqEcUgx4CGxo8kQ"
#  cnf.consumer_secret = "MEzrMqT0poJBYbcM99OvIyebe9iFkcepAzTLjA7Y"
#  cnf.oauth_token = "409179534-RxLWkHNEWYHyuerHzmk2Yxvzk0JglL6i9jJfS52h"
#  cnf.oauth_token_secret = "qe9VvyjDugvGhAmD0pBAAhcGbXra48SpWifr9q3uPNtsz"
#end

client = Twitter::REST::Client.new do |config|
  config.consumer_key = "xN8WWEAqEcUgx4CGxo8kQ"
  config.consumer_secret = "MEzrMqT0poJBYbcM99OvIyebe9iFkcepAzTLjA7Y"
  config.oauth_token = "409179534-RxLWkHNEWYHyuerHzmk2Yxvzk0JglL6i9jJfS52h"
  config.oauth_token_secret = "qe9VvyjDugvGhAmD0pBAAhcGbXra48SpWifr9q3uPNtsz"
end

options = {count: 50}

client.user_timeline("toyo_takasing", options).each do |res|
  p "#{res.text} at #{res.created_at}"
end

