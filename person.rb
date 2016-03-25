class Person
  attr_accessor :first_name, :last_name
  attr_reader :nickname
  #attr_writer :age

  def initialize(first_name, last_name)
    # Optional method for setting initial conditions on new objects
    @first_name = first_name
    @last_name = last_name
    @nickname = "#{first_name}-dizzle"
  end

  def full_name
    "#{first_name} #{last_name}" # We are not using instance methods @first_name and @last_name, rather we are using the methods .first_name and .last_name. The method full_name looks for variables with those names, doesn't find them, so it goes up a level and looks for methods with those names and finds and uses those.
    # Comment out attr_accessor for first and last name and see if full_name still works
  end

  # # GETTER
  # def first_name
  #   @first_name
  # end
  #
  # # SETTER
  # def first_name=(new_first_name)
  #   @first_name = new_first_name
  # end
  #
  # def last_name
  #   @last_name
  # end
end

#Person.new # => Calls initialize method

class Instructor < Person
  def teach
    puts "Teaching!"
  end
end

class Student < Person
  attr_accessor :age
  
  def initialize(options = {})
    super(options[:first_name], options[:last_name])
    @age = options[:age]
  end

  def learn
    puts "Learning!"
  end
end
