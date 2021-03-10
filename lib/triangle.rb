require 'pry'

class Triangle

  attr_accessor :equilateral, :isosceles, :scalene, :type, :side_c, :side_b, :side_a

  def initialize(side_a, side_b, side_c)
    @side_a = side_a
    @side_b = side_b
    @side_c = side_c
    @type = kind

  end
    
  
  def kind

    if side_a <=0 || side_b <= 0 || side_c <= 0
      begin
        raise TriangleError
      end
    elsif side_a + side_b <= side_c || 
          side_a + side_c <= side_b || 
          side_c + side_b <= side_a
      begin
        raise TriangleError
      end
    elsif side_a == side_b && side_b == side_c
        :equilateral
    elsif side_a != side_b && side_b != side_c && side_c != side_a
        :scalene
    else
        :isosceles
    end
    
  end

  class TriangleError < StandardError
    
  end



end
  











