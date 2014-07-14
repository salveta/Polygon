require './quadrangle'

class Rectangle < Quadrangle

  def initialize (first_side, second_side)
    super(first_side, second_side, first_side, second_side)
  end

  def area_rectangle
    area = 0
    area = @sides[0] * @sides[1]
  end

end