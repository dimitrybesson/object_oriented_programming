class Plateau
  attr_reader :rover_array
  #@rover_array = ['hello']
  def initialize(x_max, y_max)
    @x_max = x_max
    @y_max = y_max
    @rover_array = Array.new
  end

  def rover_array
    @rover_array
  end

  def communicate(rover_direction)
    puts "#{rover_direction}"
    # The first user input initializes a plateau, maybe the rover should take note of this?
    # set a location attribute?
    # Alternatively,...
  end

  def create_rover(rover_id, rover_name, x_coordinate, y_coordinate, direction)
    new_rover = Rover.new(rover_name, x_coordinate, y_coordinate, direction)
    @rover_array << new_rover

  end
end
