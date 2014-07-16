class Polygon

  def initialize(*sides)
    set_number_of_sides
    check_number_of_sides(sides)
    need_number_positive_and_only_numbers(sides)
    @sides=sides
  end

  def calculate_perimeter
    @sides.reduce(:+)
  end

private
  def set_number_of_sides
       raise NotImplementedError.new()
  end

  def need_number_positive_and_only_numbers(sides)
      raise ArgumentError.new("You need a positive number or greater than") if sides.select { |sides| sides.class != Fixnum || sides < 0 }.size != 0
  end

  def check_number_of_sides(sides)
    raise ArgumentError.new("You need #{@number_of_sides} sides") if sides.size < @number_of_sides
    raise ArgumentError.new("You need #{@number_of_sides} sides") if sides.size > @number_of_sides
  end
end