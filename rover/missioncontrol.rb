class MissionControl
  attr_reader :plateau_list, :rover_list

  def initialize
    @plateau_list = Array.new
    @rover_list = Array.new
  end

  def display_plateau_list
    puts "TOTAL PLATEAUS: #{Plateau.plateau_counter}\n"
    @plateau_list.each do |plateau|
      puts "ID: #{plateau.id}\t X-MAX: #{plateau.x_max}\t Y-MAX: #{plateau.y_max}"
    end
  end

  def initialize_plateau
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

  def get_plateau_by_id
    puts "Please select landing plateau for rover (choose plateau id):"
    display_plateau_list
    selected_id = gets.chomp.to_i #selected id is an integer
    selected_plateau_list =
    @plateau_list.select do |plateau|
      plateau.id == selected_id # it looks for a plateau with matching id
    end
      if selected_plateau_list.count == 1
        return selected_plateau_list[0]
      else
        #puts wrong id try again
        get_plateau_by_id
      end
  end

  def display_rover_list
    puts "TOTAL ROVERS: #{Rover.rover_counter}\n"
    @rover_list.each do |rover|
      puts "ID: #{rover.id}\t X-MAX: #{rover.x_coordinate}\t Y-MAX: #{rover.y_coordinate}"
    end
  end

  def initialize_rover
    if @plateau_list.count > 1
      selected_plateau = get_plateau_by_id
    else
      selected_plateau = @plateau_list[-1] # if plateau list has only one plateau, or if given id is not found, we set plateau to the last one created
    end

    puts "Please provide initial location for rover:"
    new_rover = gets.chomp
    rover_initial = new_rover.split(" ") # a list
    x_coordinate = rover_initial[0].to_f
    y_coordinate = rover_initial[1].to_f
    direction = rover_initial[-1]
    create_rover(selected_plateau, x_coordinate, y_coordinate, direction)
  end

  def create_rover(landing_plateau, x_coordinate, y_coordinate, direction)
    new_rover = Rover.new(landing_plateau, x_coordinate, y_coordinate, direction)
    @rover_list << new_rover
    new_rover
  end

  def get_rover_by_id
    puts "Please select rover for instruction (choose id):"
    display_rover_list
    selected_id = gets.chomp.to_i #selected id is an integer
    selected_rover_list =
    @rover_list.select do |rover|
      rover.id == selected_id # it looks for a plateau with matching id
    end
      if selected_rover_list.count == 1
        return selected_rover_list[0]
      else
        #puts invalid id, try again
        get_rover_by_id
      end
  end

  def get_rover_instruction # change to instruct_rover
    puts "Please provide rover instruction:"
    rover_instruction = gets.chomp
    instruction = rover_instruction.split("")
    @rover_list[0].read_instruction(instruction)
  end
end
