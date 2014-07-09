require './Poligonos'

class Triangulo < Poligono

  def type_triangle(lado1, lado2, lado3)
    if (lado1 == lado2 && lado2 == lado3)
      puts isosceles
    elsif (lado1 == lado2 || lado1 == lado3 || lado2 == lado3)
      puts equilatero
    else
      puts scalene
    end
  end

  def is_quadrangle?(grade1, grade2, grade3)
    return true if grade1==90 || grade2==90 || grade3==90
  end

  def suma_angulos(a,b,c)
    suma = 0
    suma = a + b + c
    suma
  end

end

