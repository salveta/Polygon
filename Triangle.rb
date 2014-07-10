require './Polygon'

class Triangle < Polygon

  def number_sides
    @number_of_sides = 3
  end

  def need_three_sides(sides)
    raise ArgumentError.new("You need three sides to be a Triangle") if sides.size < @number_of_sides
    raise ArgumentError.new("You need three sides to be a Triangle") if sides.size > @number_of_sides
  end

  def calculate_perimeter
    @sides.reduce(:+)
  end



end