require './triangle'


class Scalene < Triangle

  def initialize (first_side, second_side, third_side)
    super(first_side, second_side, third_side)  
    raise ArgumentError.new("You need three diferents sides") if ((first_side == second_side) || (first_side == third_side )|| (second_side == third_side))
  end

end