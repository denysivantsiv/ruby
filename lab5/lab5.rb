module SafetyInfo
  def safety_status
    "Інструктаж з техніки безпеки пройдено."
  end
end

module EnterpriseCatalog
  def enterprise_types
    ["Завод", "Магазин"]
  end
end

class Enterprise
  include SafetyInfo
  extend EnterpriseCatalog

  attr_reader :name, :staff_count, :revenue

  def initialize(name, staff_count, revenue)
    self.name = name
    self.staff_count = staff_count
    self.revenue = revenue
  end

  def name=(value)
    raise ArgumentError, "Назва не може бути порожньою" if value.to_s.strip.empty?
    @name = value
  end

  def staff_count=(value)
    raise ArgumentError, "Кількість персоналу не може бути від'ємною" if value.to_i < 0
    @staff_count = value.to_i
  end

  def revenue=(value)
    raise ArgumentError, "Дохід не може бути від'ємним" if value.to_f < 0
    @revenue = value.to_f
  end

  def work_staff
    "Персонал підприємства #{@name} (#{@staff_count} осіб) вийшов на зміну."
  end

  def information
    "Підприємство: #{@name}, персонал: #{@staff_count} осіб, дохід: #{@revenue} грн."
  end
end

class Factory < Enterprise
  attr_reader :shift_hours

  def initialize(name, staff_count, revenue, shift_hours)
    super(name, staff_count, revenue)
    @shift_hours = shift_hours
  end

  def work_staff
    super + " Робітники працюють у цехах зміну по #{@shift_hours} год."
  end

  def run_production
    "Завод #{@name} запускає виробничу лінію."
  end
end

class Store < Enterprise
  def work_staff
    super + " Продавці та касири обслуговують клієнтів."
  end

  def serve_customers
    "Магазин #{@name} відкрито для покупців."
  end
end

factory = Factory.new("Карпатський завод", 120, 850000, 8)
store = Store.new("Магазин №19", 14, 190000)

enterprises = [factory, store]

puts "=== ІНФОРМАЦІЯ ПРО ПІДПРИЄМСТВА ==="
enterprises.each do |ent|
  puts ent.information
  puts ent.work_staff
  puts ent.safety_status
  puts
end

puts "=== СПЕЦІАЛЬНІ МЕТОДИ ==="
puts factory.run_production
puts store.serve_customers

puts "\n=== ГЕТТЕРИ ТА СЕТТЕРИ ==="
puts "Початкова кількість персоналу в магазині: #{store.staff_count}"
store.staff_count = 16
puts "Нова кількість персоналу в магазині: #{store.staff_count}"

puts "\n=== МОДУЛІ ==="
puts "Типи підприємств: #{Enterprise.enterprise_types.join(', ')}"

puts "\n=== СИНГЛТОН-МЕТОД ==="
def store.black_friday_mode
  "Магазин #{@name} переходить у режим розпродажу з додатковою зміною персоналу!"
end
puts store.black_friday_mode