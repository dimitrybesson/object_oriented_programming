class MissionControl
  attr_reader :plateau_list, :rover_list

  def initialize
    @plateau_list = Array.new
    @rover_list = Array.new
  end

  def create_plateau(plateau_x, plateau_y)
    new_plateau = Plateau.new(plateau_x, plateau_y)
    plateau_list << new_plateau
  end

  def create_rover(rover_name, x_coordinate, y_coordinate, direction)
    new_rover = Rover.new(rover_name, x_coordinate, y_coordinate, direction)
    @rover_list << new_rover
  end

end
