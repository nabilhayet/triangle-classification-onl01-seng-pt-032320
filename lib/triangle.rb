class Triangle
  attr_accessor :base, :height1, :height2
  
  def initialize(length1,length2,length3)
    @base = length1
    @height1 = length2
    @height2 = length3 
  end 
  
  def kind 
    if ((self.base+self.height1) <= self.height2) || ((self.height1+self.height2) <= self.base) || ((self.base+self.height2) <= self.height1)
              begin 
              raise TriangleError
              rescue TriangleError => error 
              puts error.message
              end
      elsif
          (self.base == self.height1)  && (self.height1 == self.height2)
          :equilateral
    
     elsif 
      (self.base == self.height1) || (self.height1 == self.height2) || (self.base == self.height2)
        :isosceles
    elsif
      ((self.base < self.height1) && (self.height1 < self.height2)) || ((self.base > self.height2) && (self.height1 > self.height2))
        :scalene
      end 
  end 
  
  class TriangleError < StandardError 
    def message 
      puts "Lenghts are not valid"
    end 
  end 
end 
