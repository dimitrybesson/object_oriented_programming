class Rover
  attr_accessor :x_coordinate, :y_coordinate, :direction
  def initialize(landing_plateau, x_coordinate, y_coordinate, direction)
    @landing_plateau = landing_plateau
    @x_coordinate = x_coordinate
    @y_coordinate = y_coordinate
    @direction = direction
  end

  def display
    puts "Landing Plateau: #{@landing_plateau}"
    puts "X: #{@x_coordinate}"
    puts "Y: #{@y_coordinate}"
    puts "direction: #{@direction}"
  end

  # def read_initial(rover_initial)
  #   initial = rover_initial.split(" ") #now we have a list of strings
  #   @x_coordinate = initial[0].to_f #they are all floats in case I need more accuracy in the future
  #   @y_coordinate = initial[1].to_f
  #   @direction = initial[-1]
  # end

  def read_instruction(rover_instruction) #input is an array from main.rb
    #instruction_array = rover_instruction.split("")
    rover_instruction.each do |step|
      if step == "M"
        self.move
      elsif step == "R"
        self.turn_right
      elsif step == "L"
        self.turn_left
      end
    end
  end

  def move
    #if can_move?, else Warning message and don't allow movement
    case @direction
      when "N"
        @y_coordinate += 1
      when "S"
        @y_coordinate -= 1
      when "E"
        @x_coordinate += 1
      when "W"
        @x_coordinate -= 1
    end
  end

  def turn_right
    turning_hash = {"N" => "E", "E" => "S", "S" => "W", "W" => "N"} # check out Array#rotate, perhaps make a global array of directions and rotate through them
    @direction = turning_hash[@direction]
  end

  def turn_left
    turning_hash = {"N" => "W", "E" => "N", "S" => "E", "W" => "S"}
    @direction = turning_hash[@direction]
  end

  def rover_output
    "#{@x_coordinate} #{@y_coordinate} #{@direction}"
  end

  def display_map
    puts @landing_plateau.x_max
    puts @landing_plateau.y_max
  end

  def can_move?
    
  end
end
