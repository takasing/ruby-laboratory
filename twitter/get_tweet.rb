require 'twitter'

#Twitter.configure do |cnf|
#  cnf.consumer_key = "consumer_key"
#  cnf.consumer_secret = "consumer_secret"
#  cnf.oauth_token = "oauth_token"
#  cnf.oauth_token_secret = "oauth_token_secret"
#end

# input your application keys
client = Twitter::REST::Client.new do |config|
  config.consumer_key = "consumer_key"
  config.consumer_secret = "consumer_secret"
  config.oauth_token = "oauth_token"
  config.oauth_token_secret = "oauth_token_secret"
end

options = {count: 50}

client.user_timeline("toyo_takasing", options).each do |res|
  p "#{res.text} at #{res.created_at}"
end

