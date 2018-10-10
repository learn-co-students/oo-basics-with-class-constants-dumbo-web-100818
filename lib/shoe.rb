class Shoe
  attr_accessor :color, :size, :material, :condition
  attr_reader :brand

  BRANDS = []

  def initialize(brand)
    @brand = brand
    if !BRANDS.include?(brand)
    BRANDS.push(brand).uniq
    end
  end

  def cobble
    condition = "new"
    puts "Your shoe is as good as new!"
  end

end
