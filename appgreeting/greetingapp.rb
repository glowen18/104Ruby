require 'sinatra'

=begin
get '/' do 
	"Hello World"
end
=end


def determine_current_hour
	current_time = Time.new
	current_hour = current_time.hour
end

def greeting(name)
	current_hour = determine_current_hour
	if (current_hour > 3 && current_hour < 12)
		time = "morning"
	elsif (current_hour > 12 && current_hour < 18)
		time = "afternoon"
	else (current_hour > 18 || current_hour < 3)
		time = "evening"	
end

my_greeting = "Good #{time}, #{name.capitalize}."
	
end	

=begin 'This is code of putting in a parameter'

get '/' do
	my_greeting = greeting("Smorkel")	
end	
=end


get '/:name' do
	name = params[:name].capitalize
	my_greeting = greeting(name)
	"<h1>#{my_greeting}</h1>"
end		



















