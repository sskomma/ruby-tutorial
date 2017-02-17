class Spaceship
    # More of a member vairable.
  attr_accessor :destination
  attr_accessor :name
  #Initialize method in a class acts a constructor..
  # Ruby has a garbage collector, which collets unused instances.
  def initialize(name, cargo_count)
    @name = name
    @cargo_hold = cargo_count
  end
  def launch(destination)
    @destination = destination
    # go towards destination
  end
end

ship = Spaceship.new("ISRO", 103)
ship.destination = "Earth"
puts ship.destination
puts ship.name
ship.launch("Mars")
#"Inspect" method is more like a toString() in Java.
puts ship.inspect
#Inheritance Example.
class Probe
  def deploy
    puts "Deploying"
    #deploy Probe
  end
  def take_sample
    #do generic sampling
  end
end

#Child class
class MineralProbe < Probe
  def deploy
    puts "Preparing Mineral Probe"
    super
    #take Miberal sample
  end
end
class AtmosphereicProbe < Probe
  def take_sample
    #do exta work
  end
end

MineralProbe.new.deploy
AtmosphereicProbe.new.deploy
