require './Polygon'

class Square < Polygon

  def initialize(*sides)
    @sides = sides
  end

  def square_sides
    @number_sides_square = 4
  end

end