
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
            
        elsif instructions == "L" && @direction == "W"
          @direction = "S"
        
        elsif instructions == "L" && @direction == "S"
          @direction = "E"
        
        elsif instructions == "L" && @direction == "E"
          @direction = "N"
        
        elsif instructions == "R" && @direction == "N"
          @direction = "E"
        
        elsif instructions == "R" && @direction == "E"
          @direction = "S"
        
        elsif instructions == "R" && @direction == "S"
          @direction = "W"
        
        else instructions == "R" && @direction == "W"
          @direction = "N"
        end

    end


    def move

      case @direction
      when "N"
        @y += 1
      when "E"
        @x += 1
      when "S"
        @y -= 1
      when "W"
        @x -= 1
      end

    end

end # End of Rover Class


class UserInput

    def self.position
      puts "Where would you want your rover to land? (x, y, cardinal direction)"
      
      @position = gets.chomp
      
      @x = @position.split(//)[1].to_i
      @y = @position.split(//)[3].to_i
      @direction = @position.split(//)[5].upcase
      
      @rover_one = Rover.new(@x, @y, @direction)
      
    end

    def self.order
      puts "Use 'L', 'R', and 'M' commands to move your rover"
      @order = gets.chomp.upcase
      @order.split(//).each do |x|
        if x == "M" 
          @rover_one.move
        else
          @rover_one.rotate(x)
        end
      end
      print "Your rovers current location is now:  "
      @rover_one.current_position
    end

    def self.grid
      puts "Your rover can only travel on a 5 x 5 grid!"
      puts "Becareful with where you land your rover and"
      puts "what commands you give your rover to move!"
    end
end #end of UserInput Class





UserInput.position
UserInput.order

