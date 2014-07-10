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
    @sides.reduce(:+) / 2
  end

  def calculate_area
    area = 0
    area = Math.sqrt(calculate_perimeter*(calculate_perimeter-@sides[0])*(calculate_perimeter-@sides[0])*(calculate_perimeter-@sides[0]))
  end



end