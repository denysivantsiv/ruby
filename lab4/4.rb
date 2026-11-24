class NumberBox
  attr_reader :value

  def initialize(value)
    @value = value
  end

  def +(other)
    NumberBox.new(@value + other.value)
  end

  def value=(new_value)
    @value = new_value
  end
end

a = NumberBox.new(10)
b = NumberBox.new(20)
c = a + b
puts "Сума об'єктів: #{c.value}"

a.value = 50
puts "Нове значення a: #{a.value}"