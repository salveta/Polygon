require './quadrangle'

class Square < Quadrangle

  def initialize(one_side)
    super(one_side, one_side, one_side, one_side)
  end

  def area_square
    square_area = 0
    square_area = @sides[1]**2
  end

end