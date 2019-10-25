class Person
  attr_reader :age, :name
  def initialize(name, age)
    @name = name
    @age = age
  end
end

ken = Person.new("ken", 28)
alex = Person.new("Alex", 28)
jared = Person.new("Jared", 23)
makayla = Person.new("Makayla", 25)

def sort_people(people, comparer)
  people.sort do |x, y|
    comparer.call(x) <=> comparer.call(y)
  end
end


people = [ken, alex, jared, makayla]

sorted_people = sort_people(people, lambda { |person| person.age})
puts sorted_people.inspect