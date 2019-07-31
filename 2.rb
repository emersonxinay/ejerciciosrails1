class Car
  attr_reader :model, :year
  def initialize(model, year)
    @model = model
    @year = year
  end
  def modelo ()
"Mi auto favorito es un #{model} del año #{year}!"
  end
end
car = Car.new('Camaro', 2016)
puts car.modelo
