class Shoe
  attr_accessor :color, :size, :material, :condition
  attr_reader :brand

  BRANDS = []

  def initialize(brand)
    @brand = brand
    add_brand(@brand)
  end

  def cobble
    self.condition = "new"
    puts "Your shoe is as good as new!"
  end

  def add_brand(brand)
    BRANDS.push(brand) if !BRANDS.include?(brand)
  end

end
