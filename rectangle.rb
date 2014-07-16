require './quadrangle'

class Rectangle < Quadrangle

  def initialize (first_side, second_side)
    super(first_side, second_side, first_side, second_side)
  end

end