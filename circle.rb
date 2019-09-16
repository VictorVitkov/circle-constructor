require 'pry'

class Circle
  def initialize(radius)
    @radius = radius
    @diameter = radius * 2
  end

  def stats
    "radius: #{@radius}. Diameter: #{@diameter}"
  end
end

epic_circle = Circle.new(4)

puts epic_circle.stats


 # *****************************************************************************

 class Circle2
   def initialize(input)
     if input[:radius].nil?
       @radius = input[:diameter]/2
     else
       @radius = input[:radius]
     end
   end

   def radius
     "#{@radius}"
   end
 end

first_circle = Circle2.new(radius: 6)
second_circle = Circle2.new(diameter: 16)

puts "The radius of the first circle is: #{first_circle.radius}"
puts "The radius of the second circle is: #{second_circle.radius}"


# *****************************************************************************

class Circle3
  def initialize(input)
    if input.kind_of?(Hash)
      if input[:radius].nil?
        @radius = input[:diameter] / 2
      else
        @radius = input[:radius]
      end
    else
      @radius = input
    end
  end

  def radius
    "#{@radius}"
  end
end

third_circle = Circle3.new(4)
fourth_circle = Circle3.new({radius: 4})
fifth_circle = Circle3.new({diameter: 10})

puts "The radius of the third circle is: #{third_circle.radius}"
puts "The radius of the fourth circle is: #{fourth_circle.radius}"
puts "The radius of the fifth circle is: #{fifth_circle.radius}"

# *****************************************************************************
# functionally equivalent to Circle3, but more consise.


class Circle4
  def initialize(options_or_radius)
    if options_or_radius.kind_of?(Hash)
      @radius = options_or_radius[:radius] || (options_or_radius[:diameter] / 2)
    else
      @radius = options_or_radius
    end
  end

  def radius
    "#{@radius}"
  end
end

sixth_circle = Circle4.new(40)
seventh_circle = Circle4.new({radius: 140})
eigth_circle = Circle4.new({diameter: 200})

puts "The radius of the sixth circle is: #{sixth_circle.radius}"
puts "The radius of the seventh circle is: #{seventh_circle.radius}"
puts "The radius of the eigth circle is: #{eigth_circle.radius}"
