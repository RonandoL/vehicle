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









end
