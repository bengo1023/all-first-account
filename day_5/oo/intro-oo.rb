#create the facebook user class
class Alex
  def initialize(name, size, sex)
    @name = name
    @size = size
    @sex = sex
  end
  def name
    @name
  end
  def size
    @size
  end
  def sex
    @sex
  end
end

alex = Alex.new("Alex", "M", "F")
also_alex = Alex.new("Also Alex", "L", "M")
additionally_alex = Alex.new("Additionally Alex", "S", "M")

puts alex.name
puts alex.size
puts alex.sex
puts also alex.name
puts also alex.size
puts also alex.sex
puts additionally alex.name
puts additionally alex.size
puts additionally alex.sex


