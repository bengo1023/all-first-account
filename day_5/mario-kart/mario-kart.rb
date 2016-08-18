class Character
  attr_accessor :name, :gender, :speed, :size, :lives
  @@items = ["banana","blue shell","red shell","green shell","evil box","bullet","lightning","mushroom"]
  def initialize(name, gender, speed, size)
    @name = name
    @gender = gender
    @speed = speed
    @size = size

    @lives = 3
    @items_in_possesion = []

  end
  def gain_item
    if @items_in_possesion.length < 2
      item = @@items.sample
    @items_in_possesion << item
      puts "you picked up a #{item}"
    else
      puts "too many items"
    end
  end
  def use_item(character)
    if @items_in_possesion.first.include?("shell")
      character.lives = character.lives - 1
      puts "#{name} shot a shell at #{character.name}. #{character.name}. #{character.name} has #{character.lives} lives left."
    end
  end

end

mario = Character.new("mario", "M", "fast", "medium")
toad = Character.new("toad", "fungus", "fast", "small")
bowser = Character.new("bowser", "male", "slow", "large")

mario.speed = "medium"
puts mario.speed
mario.gain_item
mario.gain_item
mario.gain_item
mario.gain_item
mario.use_item(bowser)