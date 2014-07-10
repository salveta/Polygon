require './Polygon'

class Square < Polygon

  def type_square
    type_of_square_by_equal_sides = {
      1=>"I'm a Square",
      2=>"I'm a Rectangle"
    }
    return type_of_square_by_equal_sides[@sides.uniq.size]      
  end
    
private


  def set_number_of_sides
    @number_of_sides = 4
  end

end