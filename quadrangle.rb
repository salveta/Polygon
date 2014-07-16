require './polygon'

class Quadrangle < Polygon
    
 def area
    area = 0
    area = @sides[0] * @sides[1]
  end

private
  def set_number_of_sides
    @number_of_sides = 4
  end
end