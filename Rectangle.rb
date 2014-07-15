require './quadrangle'

class Rectangle < Quadrangle

  def initialize (first_side, second_side)
    super(first_side, second_side, first_side, second_side)
  end

  def area_rectangle
    area = 0
    area = @sides[0] * @sides[1]
  end

  def perimeter_rectangle
    rectangle_perimeter = 0
    rectangle_perimeter = @sides[0] + @sides[1] + @sides[2] + @sides[3]
  end

end