class Person
  def say_hello
    puts "Привіт!"
  end

  alias greet say_hello
end

person = Person.new
person.say_hello
person.greet