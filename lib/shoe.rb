require 'pry'
class Shoe
  attr_accessor :color, :size, :material, :condition
  attr_reader :brand

  BRANDS = []
  # binding.pry
  def initialize(brand) #mandatory brand is created, so don't need writer method for brand
    @brand = brand
    BRANDS.push(brand) if !BRANDS.include?(brand)

    # BRANDS.uniq #this doesn't work. That's why we change it before it is pushed in.
  end

  def cobble
    self.condition = "new"
    puts "Your shoe is as good as new!"
  end

end


# -git add . #add the changes you've made in the file tree
# -git status #lets you see the files that are staged to be commited
# -git commit -m ""   #this is adding a message on what you've udpated
# -git push           #push to git
