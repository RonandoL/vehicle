class Dealership
  @@dealerships = []  # begins as empty array, will contain all of the dealership objects

# Class Methods --------

  define_singleton_method(:all) do  # returns the @@dealerships array
    @@dealerships
  end

  define_singleton_method(:clear) do
    @@dealerships = []
  end

  define_singleton_method(:find) do |id|
    found_dealership = nil
    @@dealerships.each() do |dealership|
      if dealership.id().eql?(id)
        found_dealership = dealership
      end
    end
    found_dealership
  end

# Instance Methods --------

  define_method(:initialize) do |name|
    @name = name
    @id = @@dealerships.length().+(1)
    @cars = []
        # @ cars begins as an empty array and will contain all of the VEHICLE objects for Dealership instance. It is returned in the method .cars()
  end

  define_method(:name) do
    @name
  end

  define_method(:save) do
    @@dealerships.push(self)
  end

  define_method(:id) do
    @id
  end

  define_method(:cars) do
    @cars = []  # will contain all of the vehicle objects for Dealership instance
  end

  define_method(:add_vehicle) do |vehicle|
    @cars.push(vehicle)
  end

end
