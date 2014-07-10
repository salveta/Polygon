class Polygon

  def initialize(*sides)
    number_sides
    need_three_sides (sides)
    need_number_positive_and_only_numbers(sides)
    @sides=sides
  end

def need_number_positive_and_only_numbers(sides)
    raise ArgumentError.new("You need a positive number or greater than") if sides.select { |sides| sides.class != Fixnum || sides < 0 }.size != 0
end

  def calculate_perimeter
    @sides.reduce(:+)
  end

end