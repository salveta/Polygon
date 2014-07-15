require './Triangle'


class Scalene < Triangle

  def initialize (first_side, second_side, thred_side)
    super(first_side, second_side, thred_side)  
    raise ArgumentError.new("You need three diferents sides") if (first_side == second_side || first_side == thred_side || second_side == thred_side)
  end

#  def is_a_triangle_scalene?
#    type_of_triangle_by_equal_sides = {
#      1=>"I'm not scalene. I'm Equilateral",
#      2=>"I'm not scalene. I'm Isosceles",
#      3=>"I'm scalene"
#    }
   # return type_of_triangle_by_equal_sides[@sides.uniq.size]
  #end

end