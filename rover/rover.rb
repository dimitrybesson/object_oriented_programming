class Rover
  attr_accessor :x_coordinate, :y_coordinate, :direction, :id
  @@rover_counter = 0 # yes, I know, I will change this to class instance variables, testing it out with cool_counter
  @cool_counter = 0

  class << self
    attr_accessor :cool_counter
  end

  # def self.increase
  #   @cool_counter += 1
  # end

  def self.rover_counter
    @@rover_counter
  end

  def initialize(landing_plateau, x_coordinate, y_coordinate, direction)
    @landing_plateau = landing_plateau
    @x_coordinate = x_coordinate
    @y_coordinate = y_coordinate
    @direction = direction
    @id = @@rover_counter
    @@rover_counter += 1
    Rover.cool_counter += 1
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

  def can_move?
  end

  def move
    #if can_move?, else Warning message and don't allow movement
    #give this method the ability to take an argument (step) of varying sizes, that defaults to 1
    #warning = "Warning! About to run off the cliff!"
    warning = Exception.new("WAIT! YOU ARE GOING TO FALL OFF THE EDGE!")
    case @direction
      when "N"
        if (@y_coordinate + 1) <= @landing_plateau.y_max
          @y_coordinate += 1
        else
          #puts warning
          raise warning
        end
      when "S"
        if (@y_coordinate - 1) >= 0
          @y_coordinate -= 1
        else
          raise warning
        end
      when "E"
        if (@x_coordinate + 1) <= @landing_plateau.x_max
          @x_coordinate += 1
        else
          raise warning
        end
      when "W"
        if (@y_coordinate - 1) >= 0
          @x_coordinate -= 1
        else
          raise warning
        end
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


end
