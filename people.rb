
class Person
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def greeting
    "Hi, my name is #{@name}."
  end
end


class Student < Person
	def learn
		 puts "I get it"
	end
end


class Instructor < Person
  def teach
    puts "Everything in Ruby is an Object"
  end
end

# Create an instance of Instructor and Student whos name are Chris and Christina.
i = Instructor.new("Chris")
puts i.greeting

s = Student.new("Christina")
puts s.greeting


# call the teach method on your instructor
i.teach


# call the learn method on your student
s.learn


# call the teach method on your student instance

# s.teach  -->  You receive an error when you run the code.  This happens as the "teach" is
#               not an instance method and cannot be accessed out of class.





