class Owner
  attr_reader :name, :species
  @@all = []

  def initialize(name)
    @name = name
    @species = "human"
  end

  def say_species
    "I am a #{self.species}."
  end

  def self.all
    @@all
  end

end
