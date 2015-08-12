class Vehicle
  @@vehicles = []

  define_method(:initialize) do |make, model, year|
    @make = make
    @model = model
    @year = year

  end


  define_singleton_method(:all) do  # .all RETURNS the array
      @@vehicles
  end

  define_method(:age) do
    current_year = Time.new().year
    current_year.-(@year)
  end

  define_method(:worth_buying?) do
    american_cars = ["Chrysler", "Ford", "GM"]
    american = american_cars.include?(@make)
    new_enough = self.age.<=(15)
    american.&(new_enough)
  end

  define_method(:save) do
    @@vehicles.push(self)
  end

  define_singleton_method(:clear) do
    @@vehicles = []
  end

  define_method(:make) do
    @make
  end

end
