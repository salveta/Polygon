require './triangle'

class Equilateral < Triangle

  def initialize(first_side)
    super(first_side, first_side, first_side)
  end
end