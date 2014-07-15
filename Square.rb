require './quadrangle'

class Square < Quadrangle

  def initialize(one_side)
    super(one_side, one_side, one_side, one_side)
  end

  def perimeter_square
    square_perimeter = 0
    square_perimeter = @sides[0] + @sides[1] + @sides[2] + @sides[3]
  end

  def area_square
    square_area = 0
    square_area = @sides[0] * @sides[1]
  end

end