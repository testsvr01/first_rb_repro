class Person

attr_reader :name, :age
attr_writer :age

def initialize(name, age)
	@name = name
	@age  = age
	end


end

p1 = Person.new('Ursula',59)
p2 = Person.new('fred', 19)
p3 = Person.new('sarah', 25)

p2.age = 91 
p3.name =

puts "person 1 #{p1.name} is #{p1.age} years old"