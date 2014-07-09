require './Polygon'

class Triangle < Polygon

 def initialize(*sides)
    number_sides
    need_three_sides (sides)
  end

  def number_sides
    @number_of_sides = 3
    end

  def need_three_sides (sides)
    raise ArgumentError.new("You need three sides to be a Triangle") if sides.size < @number_of_sides
    raise ArgumentError.new("You need three sides to be a Triangle") if sides.size > @number_of_sides
  end

end