class Pet
  attr_reader :name, :animal
  def initialize(animal, name)
    @animal = animal
    @name = name
  end
  
  def to_s
    "a #{animal} named #{name}"
  end
end

class Owner
  attr_reader :name, :pets
  
  def initialize(name)
    @name = name
    @pets = []
  end
  
  def add_pet(pet)
    @pets << pet
  end
  
  def number_of_pets
    pets.size
  end
  
  def show_all_pets(pets)
    pets.each { |pet| puts pet }
  end
end

class Shelter
  def initialize
    @adoptions = {}
    @unadopted_pets = []
  end
  
  def add_a_pet(pet)
    @unadopted_pets << pet
  end
  
  def number_of_pets
    @unadopted_pets.size
  end
  
  def adopt(owner, pet)
    owner.add_pet(pet)
    @adoptions[owner.name] ||= owner
  end
  
  def print_adoptions
    @adoptions.each_pair do |name, owner|
      puts "#{name} has adopted the following pets:"
      owner.show_all_pets(owner.pets)
      puts ""
    end
  end
  
  def print_pets_waiting_for_adoption
    puts "The animal shelter has the following unadopted pets:"
    @unadopted_pets.each do |pet|
      puts pet
    end
    puts ""
  end
end


butterscotch = Pet.new('cat', 'Butterscotch')
pudding      = Pet.new('cat', 'Pudding')
darwin       = Pet.new('bearded dragon', 'Darwin')
kennedy      = Pet.new('dog', 'Kennedy')
sweetie      = Pet.new('parakeet', 'Sweetie Pie')
molly        = Pet.new('dog', 'Molly')
chester      = Pet.new('fish', 'Chester')
sampson      = Pet.new('boa constrictor', 'Sampson')
tank         = Pet.new('dog', 'Tank')

phanson = Owner.new('P Hanson')
bholmes = Owner.new('B Holmes')
mkaspshak = Owner.new('M Kaspshak')

shelter = Shelter.new
shelter.adopt(phanson, butterscotch)
shelter.adopt(phanson, pudding)

shelter.adopt(phanson, darwin)
shelter.adopt(bholmes, kennedy)
shelter.adopt(bholmes, sweetie)
shelter.adopt(bholmes, molly)
shelter.adopt(bholmes, chester)

shelter.adopt(mkaspshak, sampson)
shelter.adopt(mkaspshak, tank)

asta = Pet.new('dog', 'Asta')
laddie = Pet.new('dog', 'Laddie')
fluffy = Pet.new('cat', 'Fluffy')
kat = Pet.new('cat', 'Kat')
ben = Pet.new('cat', 'Ben')
chatterbox = Pet.new('parakeet', "chatterbox")
bluebell = Pet.new('parakeet', "Bluebell")

shelter.add_a_pet(asta)
shelter.add_a_pet(laddie)
shelter.add_a_pet(fluffy)
shelter.add_a_pet(kat)
shelter.add_a_pet(bluebell)
shelter.add_a_pet(chatterbox)
shelter.add_a_pet(ben)

shelter.print_adoptions
shelter.print_pets_waiting_for_adoption
puts "#{phanson.name} has #{phanson.number_of_pets} adopted pets."
puts "#{bholmes.name} has #{bholmes.number_of_pets} adopted pets."
puts "#{mkaspshak.name} has #{mkaspshak.number_of_pets} adopted pets."
puts "The Animal shelter has #{shelter.number_of_pets} unadopted pets."

# I need to be more careful about where I put the methods.  Originally, I had
# the array for pets in the Shelter class, but it makes more sense to keep the
# pets array with the owners.  It also make it easier to add pets to the array.

# Further Exploration -- included above... The only thing I didn't do was to 
# create a system where the newly adopted pet was taken out of the array of 
# available pets and put into the adoption hash. 