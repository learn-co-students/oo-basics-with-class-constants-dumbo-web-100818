require 'pry'


class Shoe
  BRANDS = []

  attr_accessor :color, :size, :material, :condition
  attr_reader :brand

  def initialize(brand_argument)
    @brand = brand_argument
    ##adding brand to BRANDS eachtime new is called
    BRANDS.uniq
    BRANDS << @brand
    # binding.pry



  end


  def cobble
    self.condition = "new"
    puts "Your shoe is as good as new!"
  end

end


#brands can be duplicated, remove the duplicated out of BRANDS array
