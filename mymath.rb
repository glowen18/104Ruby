
def enter_name
  puts "Please enter your name: "
  name = gets.chomp
end  	

def determine_current_hour
  current_time = Time.new
  current_hour = current_time.hour
end

def greeting(enter_name)
  current_hour = determine_current_hour
  name = enter_name
  if (current_hour > 3 && current_hour < 12)
    time = "morning"
  elsif (current_hour > 12 && current_hour < 17)
    time = "afternoon"
  else (current_hour > 17 && current_hour < 3)
    time = "evening"  
  end 
  
  puts "Good #{time}, #{enter_name.capitalize}! "    
end

greeting(enter_name)       
