# Write a class called Unicorn
# it should have a dynamic name attribute
# it should have a color attribute, that is silver by default
# it should have a method called "say" that returns whatever string is passed in, with "*~*" at the beginning and end of the string

class Unicorn
  def initialize(name)
    color = "silver"
    @name = name

    def say(string)
      puts "*~* #{string}"
    end
  end
end

unicorn = Unicorn.new("Charly")
unicorn.say("Hello!")


#  Write a class called Vampire
#  it should have a dynamic name attribute
#  it should have a pet attribute, that is a bat, by default BUT it could be dynamic if info is passed in initially
#  it should have a thirsty attribute, that is true by default
#  it should have a drink method. When called, the thirsty attribute changes to false

class Vampire
  attr_reader :pet
  def initialize(name, pet: "bat")
    @name = name
    @pet = pet
    thirsty = true

    p @name
    p @pet
    p thirsty
  end

  def drink()
    thirsty = false
    p thirsty
  end
end

vamp1 = Vampire.new("Dracula", :pet => "bird")
vamp1.drink()
vamp2 = Vampire.new("Nosferatu")
vamp2.drink()

#  Write a Dragon class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic rider attribute (string)
#  it should have a dynamic color attribute (string)
#  it should have a is_hungry attribute that is true by default
#  it should have a eat method. If the dragon eats 4 times, it is no longer hungry

class Dragon
  def initialize(name, rider, color)
    @name = name
    @rider = rider
    @color = color
    @times_eaten = 0
    is_hungry = true
    p is_hungry
    p @times_eaten
    p @name
    p @rider
  end

  def eat()
    @times_eaten +=1
      if @times_eaten >= 4
        is_hungry = false
        p is_hungry
      end
  end
end

dragon = Dragon.new("Smaug", nil, "Dragon Color")
dragon.eat
dragon.eat
dragon.eat
dragon.eat

#  Write a Hobbit class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic disposition attribute (string)
#  it should have an age attribute that defaults to 0
#  it should have a celebrate_birthday method. When called, the age increases by 1
#  it should have an is_adult attribute (boolean) that is false by default. once a Hobbit is 33, it should be an adult
#  it should have an is_old attribute that defaults to false. once a Hobbit is 101, it is old.
#  it should have a has_ring attribute. If the Hobbit's name is "Frodo", true, if not, false.

class Hobbit
  attr_reader :age
  def initialize(name, disposition, age: 0)
    @name = name
    @disposition = disposition
    @age = age
    @is_adult = false
    is_old = false
    has_ring = false

    if @age >= 33
      @is_adult = true
    elsif @age >= 101
      is_old = true
    end

    p @name
    p @disposition

    if @name == "Frodo"
      has_ring = true
    end

    p @age
    p is_old
    p @is_adult
    p has_ring
  end

  def celebrate_birthday()
    @age +=1

    if @age >= 33
      @is_adult = true
    elsif @age >= 101
      is_old = true
    end

    p @is_adult
  end
end

hobbit = Hobbit.new("Frodo", "Kind", :age => 32)
hobbit.celebrate_birthday()
