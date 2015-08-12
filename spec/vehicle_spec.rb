require('rspec')
require('vehicle')

describe('Vehicle') do

  before()do
    Vehicle.clear()
  end


  describe('.all') do
    it('create an empty array') do
      expect(Vehicle.all()).to(eq([]))
    end
  end

  describe('#age') do
    it('determin the age of the vehicle') do
       test_vehicle = Vehicle.new("Toyota", "Prius", 2000)
       expect(test_vehicle.age()).to(eq(15))
    end
  end

  describe('#worth_buying?') do
    it('returns false if vehicle is NOT American and if it is less than 15 years old') do
      test_vehicle = Vehicle.new("Toyota", "Prius", 2000)
      expect(test_vehicle.worth_buying?()).to(eq(false))
    end
  end

  describe('#save') do
    it('will save the vehicle to the array')do
      test_vehicle = Vehicle.new("Toyota", "Prius", 2000)
      test_vehicle.save()
      expect(Vehicle.all()).to(eq([test_vehicle]))
    end
  end

  describe('.clear')do
  it('will clear the vehicles array') do
    expect(Vehicle.all()).to(eq([]))
    end
  end

  describe('#make') do
    it('returns make of the vehicle') do
      test_vehicle = Vehicle.new("Toyota", "Prius", 2000)
      test_vehicle.save()
      expect(test_vehicle.make()).to(eq("Toyota"))
    end
  end

  describe('#model') do
    it('returns model of the vehicle') do
      test_vehicle = Vehicle.new("Toyota", "Prius", 2000)
      test_vehicle.save()
      expect(test_vehicle.model()).to(eq("Prius"))
    end
  end

  describe('#year') do
    it('returns year of the vehicle') do
      test_vehicle = Vehicle.new("Toyota", "Prius", 2000)
      test_vehicle.save()
      expect(test_vehicle.year()).to(eq(2000))
    end
  end

  describe('#id') do
    it('assigns id to the vehicle') do
      test_vehicle = Vehicle.new("Toyota", "Prius", 2000)
      test_vehicle.save()
      expect(test_vehicle.id()).to(eq(1))
    end
  end

   describe('.find') do
     it('will find/return vehicle by id number from array of vehicles') do
       test_vehicle = Vehicle.new("Toyota", "Prius", 2000)
       test_vehicle.save()
       test_vehicle2 = Vehicle.new("Ford", "F-150", 2012)
       test_vehicle2.save()
       expect(Vehicle.find(test_vehicle.id())).to(eq(test_vehicle))
     end
   end




end
