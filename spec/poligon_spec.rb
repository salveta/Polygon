require './triangle'
require './isosceles'
require './equilateral'
require './scalene'
require './quadrangle'
require './square'
require './rectangle'

describe "A Triangle" do

  it "Need three sides to be a Triangle" do
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
    expect(Triangle.new(7,4,5).calculate_area).to eq(19008.0)
  end
end

describe "A Isosceles" do

  it "pair of sides defined it" do
    expect{Isosceles.new(2,3)}.to_not raise_error()   
  end 

  it "Is also a Triangle" do
    expect(Isosceles.new(2,3).class.ancestors).to include(Triangle)
  end

    it "All sides have to be positive and no words" do
    expect{Isosceles.new(1,2,"hola")}.to raise_error(ArgumentError)
    expect{Isosceles.new(3,-5,4)}.to raise_error(ArgumentError)
  end

  it "calculate perimeter Isosceles" do
    expect(Isosceles.new(2,3).calculate_perimeter).to eq(7)   
  end

  it "Is also a Polygon" do
    expect(Isosceles.new(2,3).class.ancestors).to include(Polygon)
  end
end

describe "A Equilateral" do

  it "One side defined it" do
    expect{Equilateral.new(1)}.to_not raise_error()
  end

  it "Is also a Triangle" do
    expect(Equilateral.new(2).class.ancestors).to include(Triangle)
  end

  it "Is also a Polygon" do
    expect(Equilateral.new(3).class.ancestors).to include(Polygon)
  end

  it "calculate perimeter Equilateral" do
    expect(Equilateral.new(2).calculate_perimeter).to eq(6)   
  end
end

describe "A Scalene" do

   it "Three sides defined it" do
    expect{Scalene.new(1,2,3)}.to_not raise_error()
  end

  it "Is also a Polygon" do
    expect(Scalene.new(1,2,3).class.ancestors).to include(Polygon)
  end

  it "Is also a Triangle" do
    expect(Scalene.new(2,3,4).class.ancestors).to include(Triangle)
  end

  it "Need three diferent sides to defined it" do
    expect{Scalene.new(3,3,2)}.to raise_error(ArgumentError)
  end
end

describe "A Quadrangle" do

  it "Four sides defined a Quadrangle" do
    expect{Quadrangle.new(4,4,4,4)}. to_not raise_error()
  end

  it "Is also a Polygon" do
    expect(Quadrangle.new(2,2,4,4).class.ancestors).to include(Polygon)
  end

  it "All sides have to be positive and no words" do
    expect{Quadrangle.new(2,2,"hola",2)}.to raise_error(ArgumentError)
    expect{Quadrangle.new(3,-5,3,3)}.to raise_error(ArgumentError)
  end

  it "Calculate perimeter Quadrangle" do
    expect(Quadrangle.new(4,4,4,4).calculate_perimeter).to eq(16)
  end
end

describe "A Rectangle" do

  it "Two pair of sides equal and other pair of sides equal to be a Rectangle" do
    expect{Rectangle.new(4,2)}.to_not raise_error()   
  end 

  it "Is also a Polygon" do
    expect(Rectangle.new(2,4).class.ancestors).to include(Polygon)
  end

  it "Is also a Rectangle" do
    expect(Rectangle.new(4,5).class.ancestors).to include(Quadrangle)
  end

  it "Calculate area of Rectangle" do
    expect(Rectangle.new(2,4).area).to eq(8)
  end

  it "Calculate perimeter of Rectangle" do
    expect(Rectangle.new(2,4).calculate_perimeter).to eq(12)
  end
end

describe "A Square" do

  it "Four sides equal to be a Square" do
    expect{Square.new(4)}.to_not raise_error()   
  end

  it "Is also a Polygon" do
    expect(Square.new(4).class.ancestors).to include(Polygon)
  end

  it "Is also a Square" do
    expect(Square.new(4).class.ancestors).to include(Quadrangle)
  end
  it "Calculate perimeter Square" do
    expect(Square.new(5).calculate_perimeter).to eq(20)
  end

  it "Calculate area Square" do
    expect(Square.new(5).area).to eq(25)
  end
end