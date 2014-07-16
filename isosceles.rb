require './triangle'


class Isosceles < Triangle

  def initialize (first_side, second_side)
    super(first_side, first_side, second_side)
  end
end