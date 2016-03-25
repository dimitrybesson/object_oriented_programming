class Animal
  attr_accessor :name, :age, :colour, :description
  @description = "The Animal class consists of all animals."

  def initialize(name, age, colour)
    @name = name
    @age = age
    @colour = colour
  end

  def greeting
    "Hello, my name is #{name}, I am #{age} years old, and I am #{colour}."
  end
end
