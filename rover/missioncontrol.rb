class MissionControl
  attr_reader :plateau_list, :rover_list

  def initialize
    @plateau_list = Array.new
    @rover_list = Array.new
  end

  def get_plateau_initial
    puts "Please provide plateau dimensions:"
    plateau_initial = gets.chomp
    plateau_dimensions = plateau_initial.split(" ")
    plateau_x = plateau_dimensions[0].to_f
    plateau_y = plateau_dimensions[-1].to_f
    create_plateau(plateau_x, plateau_y)
  end

  def create_plateau(plateau_x, plateau_y)
    new_plateau = Plateau.new(plateau_x, plateau_y)
    plateau_list << new_plateau
    new_plateau
  end

  def get_rover_initial
    puts "Please provide initial location for rover:"
    new_rover = gets.chomp
    rover_initial = new_rover.split(" ") # a list
    x_coordinate = rover_initial[0].to_f
    y_coordinate = rover_initial[1].to_f
    direction = rover_initial[-1]
    create_rover(@plateau_list[-1], x_coordinate, y_coordinate, direction) #this is weak because it initializes rover on most recently added plateau. how can i customize this? One way would be to initialize the plateau and the rover in the same method. Another way would be to have the create platueau method pass the plateau into the rover method, but then the plateau method is assuming that you want to create a rover.
  end

  def create_rover(landing_plateau, x_coordinate, y_coordinate, direction)
    new_rover = Rover.new(landing_plateau, x_coordinate, y_coordinate, direction)
    @rover_list << new_rover
    new_rover
  end

  def get_rover_instruction
    puts "Please provide rover instruction:"
    rover_instruction = gets.chomp
    instruction = rover_instruction.split("")
    @rover_list[0].read_instruction(instruction)
  end

  def allow_movement(rover)
    puts "#{rover}"
  end

end
