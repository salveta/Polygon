require './Triangle'
require './Square'

describe "A Triangle" do

  it "Number of sides is three" do
   expect(Triangle.new(1,2,3).number_of_sides).to eq(3)
  end	

  it "Three sides to be a Triangle" do
    expect{Triangle.new()}.to raise_error(ArgumentError)
    expect{Triangle.new(1)}.to raise_error(ArgumentError)
    expect{Triangle.new(1,2)}.to raise_error(ArgumentError)
    expect{Triangle.new(1,2,3,4)}.to raise_error(ArgumentError)
  end

  it "All sides have to be positive and no words" do
    expect{Triangle.new(1,2,"hola")}.to raise_error(ArgumentError)
    expect{Triangle.new(3,-5,4)}.to raise_error(ArgumentError)
  end

  it "Is also a Polygon" do
    expect(Triangle.new(2,2,3).class.ancestors).to include(Polygon)
  end

  it "Calculate perimeter of Triangle" do
    expect(Triangle.new(7,4,5).calculate_perimeter).to eq(16)
  end

  it "Calculate area of Triangle" do
    expect(Triangle.new(7,4,5).calculate_area).to eq(137.8695)
  end

  it "what type of Triangle is? " do
    expect(Triangle.new(3,2,3).type_triangle).to eq("I'm isosceles")
    expect(Triangle.new(2,2,2).type_triangle).to eq("I'm equilateral")
    expect(Triangle.new(4,2,3).type_triangle).to eq("I'm scalene")
  end
end

describe "A Square" do

  it "Number of sides is four" do
    expect(Square.new(1,2,3,4).number_of_sides).to eq(4)
  end

  it "Is also a Polygon" do
    expect(Square.new(2,2,3,3).class.ancestors).to include(Polygon)
  end

  it "All sides have to be positive and no words" do
    expect{Square.new(1,2,"hola",4)}.to raise_error(ArgumentError)
    expect{Square.new(3,-5,4,3)}.to raise_error(ArgumentError)
  end

  it "Calculate Perimeter Square" do
    expect(Square.new(1,2,3,4).calculate_perimeter).to eq(10)
  end

  it "what type of Square is? " do
    expect(Square.new(3,3,3,3).type_square).to eq("I'm a Square")
    expect(Square.new(3,2,2,3).type_square).to eq("I'm a Rectangle")
  end

    it "Four sides to be a Triangle" do
    expect{Square.new()}.to raise_error(ArgumentError)
    expect{Square.new(1)}.to raise_error(ArgumentError)
    expect{Square.new(1,2)}.to raise_error(ArgumentError)
    expect{Square.new(1,2,3)}.to raise_error(ArgumentError)
    expect{Square.new(1,2,3,4,5)}.to raise_error(ArgumentError)
  end

  it "Calculate area Square" do
    expect(Square.new(5,5,5,5).area_square).to eq(25)
  end
end

describe "A Isosceles" do

  it "Is also a Triangle" do
    expect(Isosceles.new(2,2,3).class.ancestors).to include(Triangle)
  end


end