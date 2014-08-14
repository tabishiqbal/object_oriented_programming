# Parent class
class Parent
  def initialize(name)
    @name = name
  end

  def greeting
    "Hi, my name is #{@name}."
  end
end

# Student Class
class Student
	def learn
		 "I get it"
	end
end

# Instructor Class
class Instructor
  def teach
    "Everything in Ruby is an Object"
  end
end

c = Parent.new("Chris")
puts c.greeting