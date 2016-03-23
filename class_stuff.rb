class Person
  attr_accessor :name

  def greeting
    "Hello, #{self.name}"
  end
end

jim = Person.new
p jim.name
jim.name = "Jim"
p jim.greeting
