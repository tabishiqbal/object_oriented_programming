
class Parent

  def initialize(name)
    @name = name
  end

  def greeting
    "Hi, my name is #{@name}."
  end
end


class Student < Parent
	def learn
		 puts "I get it"
	end
end


class Instructor < Parent
  def teach
    puts "Everything in Ruby is an Object"
  end
end


i = Instructor.new("Chris")
puts i.greeting

s = Student.new("Christina")
puts s.greeting








