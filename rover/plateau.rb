class Plateau
  attr_accessor :x_max, :y_max, :id
  #attr_reader :plateau_counter
  @@plateau_counter = 0

  def self.plateau_counter # I need this method for mission control to be able to call it in display_plateau_list
    @@plateau_counter
  end

  def initialize(x_max, y_max)
    @x_max = x_max
    @y_max = y_max
    @id = @@plateau_counter
    @@plateau_counter += 1
    #@rover_list = Array.new #there is a question about this
  end
end
