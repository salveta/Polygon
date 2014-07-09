require './Triangle'

describe "A Polygon" do

  it "Number of sides is three" do
   expect(Triangle.new(1,2,3).number_sides).to eq(3)
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

end
