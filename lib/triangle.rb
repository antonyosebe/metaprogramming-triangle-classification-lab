class Triangle
  # write code here
  attr_accessor :length1, :length2, :length3

  def initialize(length1, length2, length3)
    @length1 = length1
    @length2 = length2
  @length3 = length3
  end

  def kind
    triangle = [@length1, @length2,@length3].uniq
    p triangle
    if @length1 <= 0 || @length2 <= 0 ||@length3 <= 0
      raise TriangleError
    end
    if @length1 + @length2 <=@length3 || @length1 + @length3 <= @length2 || @length2 + @length3 <= @length1
      raise TriangleError
    end
    if triangle.size == 1
      :equilateral
    elsif triangle.size == 2
      :isosceles
    else
      :scalene
    end
  end

  class TriangleError < StandardError
  end
end
