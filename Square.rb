require './Polygon'

class Square < Polygon

  def number_of_sides
    @number_of_sides
  end


  def type_square
      
  end

  private

  def set_number_of_sides
    @number_of_sides = 4
  end

end