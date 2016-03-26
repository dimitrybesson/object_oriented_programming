require_relative 'rover'
require_relative 'plateau'
require_relative 'missioncontrol'

#PROGRAM COMMANDS # I should put these as methods in mission control
# Set up a Plateau
puts "Please provide plateau dimensions:"
plateau_initial = gets.chomp
plateau_dimensions = plateau_initial.split(" ")
x_max = plateau_dimensions[0].to_f
y_max = plateau_dimensions[-1].to_f
pl = Plateau.new(x_max, y_max )
p pl
#Set up a Rover
puts "Please provide initial location for rover:"
rover_initial = gets.chomp
initial = rover_initial.split(" ") # a list
x_coordinate = initial[0].to_f
y_coordinate = initial[1].to_f
direction = initial[-1]
rover1 = Rover.new(pl, x_coordinate, y_coordinate, direction)
rover1.display
# Take instructions
puts "Please provide instruction:"
rover_instruction = gets.chomp
instruction = rover_instruction.split("")
rover1.read_instruction(instruction)
# Show final location
puts rover1.rover_output
rover1.display





#
# rover1 = Rover.new(rover_name)
# rover1.read_initial(rover_initial)
# rover1.read_instruction(rover_instruction)
# puts rover1.rover_output


#rover1.read_instruction(rover_instruction)
#puts rover1.display
