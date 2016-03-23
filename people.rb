class Person
  attr_accessor :name

  def initialize
    @name
  end

  def greeting
    puts "Hi, my name is #{@name}" # alternatively, I could write self.name instead of @name
  end
end

class Student < Person
  def learn
    puts "I get it!"
  end
end

class Instructor < Person
  def teach
    puts "Everything in Ruby is an Object"
  end
end


student = Student.new
student.name = "Dima"
student.learn
student.greeting
