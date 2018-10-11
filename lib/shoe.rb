require 'pry'
class Shoe
  attr_accessor :color, :size, :material, :condition
  attr_reader :brand

  BRANDS = []

  def initialize(brand)
    @brand = brand
    BRANDS << brand
    BRANDS.uniq!
  end
# we need to permanately alter BRANDS, not just return the uniq array, so we use the bang operator '!' (will return nil if no changes are made)


  def cobble
    self.condition = "new"
    puts "Your shoe is as good as new!"
  end

end
