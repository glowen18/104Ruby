require 'rubygems'
require 'twilio-ruby'

account_sid = "ACcb82531cf28c9dd679e2c2dc0e28c3f2"
auth_token = "59b2398af75cfb407f43c5da2e0f33da"

@client = Twilio::REST::Client.new(account_sid,auth_token)

message = @client.account.messages.create(
	:from => "(424) 292-4469",
	:to => "(310) 850-9896",
	:body => "Haaaaiiii!"
)

puts message.to
