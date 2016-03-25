class Vertebrate < Animal
  attr_accessor :vertebrae_count
  @description = "The Vertebrate class consists of animals that have spines."

  def initialize(name, age, colour)
    super
  end

  def greeting
    super + " I also have a spine with #{@vertebrae_count} vertebrae!"
    # @vertebrae_count can be use with the '@' because attr_accessor has set up a method by that name which will be use here.
  end

  def lose_vertebrae(number_of_vertebrae)
    @vertebrae_count -= number_of_vertebrae
  end

end
