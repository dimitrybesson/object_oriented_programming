class Invertebrate < Animal
  @description = "The Invertebrate class consists of animals that do not have spines."

  attr_accessor :slime_level
  def initialize(name, age, colour)
    super
  end

  def greeting
    super + " I have a sliminess level of #{@slime_level} on the slime scale!"
  end

  def remove_slime(levels)
    @slime_level -= levels
  end

end
