class Person
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def greeting
    puts "Hi, my name is #{@name}." # alternatively, I could write self.name instead of @name
  end
end

class Student < Person
  def learn
    puts "I get it!"
  end
end

class Instructor < Person
  def teach
    puts "Everything in Ruby is an Object."
  end
end

# Step 6
chris = Instructor.new("Chris")
chris.greeting

# Step 7
cristina = Student.new("Cristina")
cristina.greeting

# Step 8
chris.teach
cristina.learn
#cristina.teach
# This does not work because cristina is an instance of Student class, which does not have the #learn instance method.
