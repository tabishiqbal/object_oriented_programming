
class Rover
  attr_accessor :x, :y, :direction

    def initialize(x, y, direction)
      @x = x
      @y = y
      @direction = direction
    end


    def current_position
     puts "#{@x}, #{@y}, #{@direction}"
    end


    def rotate(instructions)
     
      if instructions == "L" && @direction == "N"
        @direction = "W"
      end
      if instructions == "L" && @direction == "W"
        @direction = "S"
      end
      if instructions == "L" && @direction == "S"
        @direction = "E"
      end
      if instructions == "L" && @direction == "E"
        @direction = "N"
      end
      if instructions == "R" && @direction == "N"
        @direction = "E"
      end
      if instructions == "R" && @direction == "E"
        @direction = "S"
      end
      if instructions == "R" && @direction == "S"
        @direction = "W"
      end
      if instructions == "R" && @direction == "W"
        @direction = "N"
      end

    end


    def move
      if @direction == "N"
        @y += 1
        puts "#{@y}"
      end
    end



end


class UserInput

  def self.position
    puts "Where would you want your rover to move?"
    
    @position = gets.chomp.upcase
    
    @x = @position.split(//)[1].to_i
    @y = @position.split(//)[3].to_i
    @direction = @position.split(//)[5]
    
    @rover_one = Rover.new(@x, @y, @direction)
  end

  def self.order
    puts "Please input L and R instructions"
    @order = gets.chomp.upcase
    # puts "#{@order}"
    @order.split(//).each do |bob|
      if bob == "M" 
        @rover_one.move
      else
        @rover_one.rotate(bob)

      end

    end
    @rover_one.current_position
  end
end

UserInput.position
UserInput.order



# pleateu = Grid.new(5, 5)








# class Grid
#   attr_accessor :max_x, :max_y

#     def initialize(max_x, max_y)
#       @max_x = max_x
#       @max_y = max_y
#     end
# end




# puts "this is your current position: #{rover_one.current_position}"

# rover_one.move

# puts "this is your current position: #{rover_one.current_position}"




#  rotation



  # def orientation_left
  #   case @direction
  #   when "N"
  #     puts "your orientation is now W"
  #     @direction = "W"
  #   when "W"
  #     puts "your orientation is now S"
  #     @direction = "S"
  #   when "S"
  #     puts "your orientation is now E"
  #     @direction = "E"
  #   when "E"
  #     puts "your orientation is now N"
  #     @direction = "N"
  #   else
  #     puts "I don't know what your current direction is."
  #     "#{@direction}"
  #   end
  # end

  # def orientation_right

  #    case @direction
  #   when "N"
  #     puts "your orientation is now E"
  #     @direction = "E"
  #   when "E"
  #     puts "your orientation is now S"
  #     @direction = "S"
  #   when "S"
  #     puts "your orientation is now W"
  #     @direction = "W"
  #   when "W"
  #     puts "your orientation is now N"
  #     @direction = "N"
  #   else
  #     puts "I don't know what your current direction is."
  #     "#{@direction}"
  #   end
  # end

#




# rover_one.orientation_left()

# rover_one.move
# puts rover_one.current_position

# rover_one.orientation_left()
# rover_one.move

# rover_one.orientation_left()
# rover_one.move

# rover_one.orientation_left()
# rover_one.move
# rover_one.move
