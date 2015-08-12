require('sinatra')
require('sinatra/reloader')
require('./lib/vehicle')     # when copy pasting, change file name
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

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
  make = params.fetch("make")
  model = params.fetch("model")
  year = params.fetch("year")
  vehicle = Vehicle.new(make, model, year)
  vehicle.save()
  erb(:success)
end


get('/vehicles/:id') do
  @vehicle = Vehicle.find(params.fetch("id").to_i())
  erb(:vehicle)
end
