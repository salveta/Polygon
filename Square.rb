require './Polygon'

class Square < Polygon
    
  def area_square
    square_area = 0
    square_area = @sides[1]**2
  end

private

  def set_number_of_sides
    @number_of_sides = 4
  end

end