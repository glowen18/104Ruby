puts "What is your birthdate in MMDDYYYY format?" 

bd = gets 

def get_birth_number(bd) 
	number = bd[0].to_i + bd[1].to_i + bd[2].to_i + bd[3].to_i + bd[4].to_i + bd[5].to_i + bd[6].to_i + bd[7].to_i

	number = number.to_s
	number = number[0].to_i + number[1].to_i

	if number > 9
		number = number.to_s
		number = number[0].to_i + number[1].to_i
end
	return number
end

birth_number = get_birth_number(bd)

def get_message(birth_number)

case(birth_number)
when 1 
	message = "Your numerology number is #{birth_number}.  \nOne is the leader. The number one indicates the ability to stand alone, and is a strong vibration. Ruled by the Sun."

when 2      
	message = "Your numerology number is #{birth_number}.  \nThis is the mediator and peace-lover. The number two indicates the desire for harmony. It is a gentle, considerate, and sensitive vibration. \nRuled by the Moon."

when 3 
	message = "Your numerology number is #{birth_number}.  \n Number Three is a sociable, friendly, and outgoing vibration. Kind, positive, and optimistic, Three’s enjoy life and have a good sense of humor. \nRuled by Jupiter."

when 4 
	message =  "Your numerology number is #{birth_number}.  \nThis is the worker. Practical, with a love of detail, Fours are trustworthy, hard-working, and helpful. \nRuled by Uranus."

when 5 
	message =  "Your numerology number is #{birth_number}.  \nThis is the freedom lover. The number five is an intellectual vibration. These are ‘idea’ people with a love of variety and the ability to adapt to most situations. \nRuled by Mercury."

when 6 
	message =  "Your numerology number is #{birth_number}.  \nThis is the peace lover. The number six is a loving, stable, and harmonious vibration. \nRuled by Venus."

when 7 
	message =  "Your numerology number is #{birth_number}.  \nThis is the deep thinker. The number seven is a spiritual vibration. These people are not very attached to material things, are introspective, and generally quiet. \nRuled by Neptune."

when 8
	message =  "Your numerology number is #{birth_number}.  \nThis is the manager. Number Eight is a strong, successful, and material vibration. \nRuled by Saturn."

when 9
	message =  "Your numerology number is #{birth_number}.  \nThis is the teacher. Number Nine is a tolerant, somewhat impractical, and sympathetic vibration. \nRuled by Mars."
else
	message = "That does not compute."	
	end
end

message = get_message(birth_number)

puts message


