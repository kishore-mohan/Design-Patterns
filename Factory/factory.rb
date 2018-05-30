class WaterLilly
  def initialize name
    @name = name
  end

  def grow
    puts("water lilly #{@name} grows")
  end
end

class Frog
  def initialize name
    @name = name
  end

  def eat
    puts "frog #{@name} eats daily"
  end

  def speak
    puts "frog #{@name} speaks croooooccc"
  end

  def sleep
    puts "frog #{@name} sleeps anytume"
  end
end

class Tiger
  def initialize name
    @name = name
  end

  def eat
    puts "Tiger #{@name} eats daily"
  end

  def speak
    puts "Tiger #{@name} speaks roars"
  end

  def sleeps
    puts "Tiger #{@name} sleeps anytume"
  end
end


class Tree
  def initialize name
    @name = name
  end

  def grow
    puts("Tree #{@name} grows")
  end
end

class Factory
  attr_accessor :plant, :animal
  def initialize(plant, animal)
    @plant = plant
    @animal = animal
  end

  def new_plant name
    plant.new(name)
  end

  def new_animal name
    animal.new(name)
  end
end



class Habitat
  attr_accessor :plants, :animals
  def initialize(animal_num, plant_num, factory)
    @plants = []
    @animals = []
    animal_num.times do |i|
      animal = factory.new_animal "animal#{i}"
      @animals << animal
    end

    plant_num.times do |i|
      plant = factory.new_plant "plant#{i}"
      @plants << plant
    end
  end
end

pond_factory = Factory.new(WaterLilly, Frog)
jungle_factory = Factory.new(Tree, Tiger)

pond = Habitat.new(2, 2, pond_factory)
jungle = Habitat.new(2, 2, jungle_factory)

p pond.plants.first.grow

p jungle.animals.first.eat
p jungle.animals.first.speak
p jungle.animals.first.sleeps


