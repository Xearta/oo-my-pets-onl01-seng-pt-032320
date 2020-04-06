require 'pry'

class Owner
  attr_reader :name, :species
  @@all = []

  def initialize(name)
    @name = name
    @species = "human"
    save
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def say_species
    "I am a #{self.species}."
  end

  def self.count
    self.all.length
  end

  def self.reset_all
    @@all.clear
  end

  def cats
    Cat.all.select { |cat| cat.owner == self }
  end

  def dogs
    Dog.all.select { |dog| dog.owner == self }
  end

  def buy_cat(cat_name)
    #Cat.new(cat_name,self.name)

  end

  # TODO FIXME
  def buy_dog(dog_name)

  end

  def walk_dogs
    Dog.all.select do |dog|
      dog.mood = "happy"
    end
  end

  def feed_cats
    Cat.all.select do |cat|
      cat.mood = "happy"
    end
  end

end


a = Owner.new("Tester")
a.buy_cat("Kitty")
binding.pry
