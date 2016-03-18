class Pet
	
	attr_accessor :name, :owner_name
end

=begin
	attr_writer :name, :owner_name
	attr_reader :name, :owner_name
	end
=end	
		

class Ferret < Pet
	
	@@total_ferrets = 0

	def initialize
		@@total_ferrets += 1
	end
	
	def self.current_count
		puts "There are currently #{@@total_ferrets} instances in my Ferret class."
	end
end			
				

=begin my_ferret = Ferret.new
my_ferret.name= "Fredo"
ferret_name = my_ferret.name
puts "#{ferret_name} is my pet."
=end

my_ferret = Ferret.new
my_ferret.name = "Sammy"
ferretname = my_ferret.name
puts "#{ferretname} says yo!"

Ferret.current_count


puts my_ferret.inspect

