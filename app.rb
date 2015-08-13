require('sinatra')
require('sinatra/reloader')
require('./lib/vehicle')     # when copy pasting, change file name
also_reload('lib/**/*.rb')
require('./lib/dealership')

get('/') do
  erb(:index)
end

# Vehicles
  get('/vehicles') do   # @vehicles array displays vehicles on vehicle.erb page
    @vehicles = Vehicle.all()
    erb(:vehicles)
  end

  get('/vehicles/new') do
     erb(:vehicles_form)
  end

      get('/results') do
        erb(:results)
      end

  post('/vehicles') do
    make = params.fetch('make')
    model = params.fetch('model')
    year = params.fetch('year')
    @vehicle = Vehicle.new(make, model, year)
    @vehicle.save()
    @dealership = Dealership.find(params.fetch('dealership_id').to_i())
    @dealership.add_vehicle(@vehicle)
    erb(:success)
  end


  get('/vehicles/:id') do
    @vehicle = Vehicle.find(params.fetch("id").to_i())
    erb(:vehicle)
  end

# Dealerships
  get('/dealerships/new') do
    erb(:dealerships_form)
  end  # route to serve the form for adding new dealerships

  get('/dealerships') do
    @dealerships = Dealership.all()
    erb(:dealerships)
  end  # route to handle dealerships

  post('/dealerships') do
    name = params.fetch('name')
    Dealership.new(name).save()
    @dealerships = Dealership.all()
    erb(:success)
  end  # route to gather the input from the dealerships_form.erb form and create a new instance of Dealership

  get('/vehicles/:id') do
    @vehicle = Vehicle.find(params.fetch('id').to_i())
    erb(:vehicle)
  end # block to handle displaying an individual dealership's page

  get('/dealerships/:id') do
    @dealership = Dealership.find(params.fetch('id').to_i())
    erb(:dealership)
  end

  get('/dealerships/:id/vehicles/new') do
    @dealership = Dealership.find(params.fetch('id').to_i())
    erb(:dealership_vehicles_form)
  end  # block to handle a form for adding new vehicles to dealerships


