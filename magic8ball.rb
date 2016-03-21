require 'rubygems'
require 'twilio-ruby'

account_sid = "ACcb82531cf28c9dd679e2c2dc0e28c3f2"
auth_token = "59b2398af75cfb407f43c5da2e0f33da"

@client = Twilio::REST::Client.new(account_sid,auth_token)

puts  "Ask the Magic 8 Ball your question:"

question = gets.chomp

answers = ["It is certain",
"Yes, definitely",
"You may rely on it",
"As I see it, yes",
"Most likely",
"Reply hazy try again",
"Ask again later",
"Cannot predict now",
"Concentrate and ask again",
"Don't count on it",
"My sources say no",
"Outlook not so good",
"Very doubtful"]

magic_answer = answers[rand(0..answers.length)]

message = @client.account.messages.create(
	:from => "(424) 292-4469",
	:to => "(310) 850-9896",
	:body => "You asked #{question}. The Magic 8-Ball says: #{magic_answer}."
)

puts magic_answer

