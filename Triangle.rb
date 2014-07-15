require './Polygon'

class Triangle < Polygon

  def calculate_area
    area = 0
    area = Math.sqrt(calculate_perimeter*(calculate_perimeter-@sides[0])*(calculate_perimeter-@sides[1])*(calculate_perimeter-@sides[2]))
    area.round(4)
  end

private

  def set_number_of_sides
    @number_of_sides = 3
  end

  def set_number_of_angles
    @number_of_angles = 3
  end

end