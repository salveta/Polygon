require './Triangle'

describe "A Poligon" do

  it "number of sides is three" do
  expect(Triangle.new(1,2,3).number_sides).to eq(3)
  end	

   
end
