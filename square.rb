require './quadrangle'

class Square < Quadrangle

  def initialize(one_side)
    super(one_side, one_side, one_side, one_side)
  end

end