require './polygon'

class Triangle < Polygon

  def calculate_area
    otro_product=calculate_perimeter
    @sides.each{|side|
      otro_product=otro_product*(calculate_perimeter-side)
    }
    otro_product.round(4)
  end

private
  def set_number_of_sides
    @number_of_sides = 3
  end

end