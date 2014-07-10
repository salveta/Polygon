require './Polygon'

class Triangle < Polygon

  def calculate_area
    area = 0
    area = Math.sqrt(calculate_perimeter*(calculate_perimeter-@sides[0])*(calculate_perimeter-@sides[1])*(calculate_perimeter-@sides[2]))
    area.round(4)
  end

  def type_triangle

    type_of_triangle_by_equal_sides = {
      1=>"I'm equilateral",
      2=>"I'm isosceles",
      3=>"I'm scalene"
    }
    return type_of_triangle_by_equal_sides[@sides.uniq.size]
  end

private

  def set_number_of_sides
    @number_of_sides = 3
  end

end