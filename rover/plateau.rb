class Plateau
  attr_accessor :x_max, :y_max
  #attr_reader :rover_list

  def initialize(x_max, y_max)
    @x_max = x_max
    @y_max = y_max
    #@rover_list = Array.new
  end
end
