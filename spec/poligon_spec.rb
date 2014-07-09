require './Triangle'

describe "A Polygon" do

  it "Number of sides is three" do
  expect(Triangle.new(1,2,3).number_sides).to eq(3)
  end	

  it "Is a polygon" do
  expect(Triangle.new(1,2.3).class.ancestors).to include(Polygon)
  end

  it "needs three sides to be a Triangle" do
    expect{Triangle.new()}.to raise_error(ArgumentError)
    expect{Triangle.new(1)}.to raise_error(ArgumentError)
    expect{Triangle.new(1,2)}.to raise_error(ArgumentError)
    expect{Triangle.new(1,2,3,4)}.to raise_error(ArgumentError)
  end
   
end
