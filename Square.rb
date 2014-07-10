require './Polygon'

class Square < Polygon

  def initialize(*sides)
    @sides = sides
  end

  def number_sides
    @number_sides_square = 4
  end

end